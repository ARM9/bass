#pragma once

#include <nall/string.hpp>
#include <nall/decode/inflate.hpp>

namespace nall::Decode {

struct PNG {
  PNG();
  ~PNG();

  auto load(const string& filename) -> bool;
  auto load(const uint8_t* sourceData, uint sourceSize) -> bool;
  auto readbits(const uint8_t*& data) -> uint;

  struct Info {
    uint width;
    uint height;
    uint bitDepth;
    //colorType:
    //0 = L (luma)
    //2 = R,G,B
    //3 = P (palette)
    //4 = L,A
    //6 = R,G,B,A
    uint colorType;
    uint compressionMethod;
    uint filterType;
    uint interlaceMethod;

    uint bytesPerPixel;
    uint pitch;

    uint8_t palette[256][3];
  } info;

  uint8_t* data = nullptr;
  uint size = 0;

  uint bitpos = 0;

protected:
  enum class FourCC : uint {
    IHDR = 0x49484452,
    PLTE = 0x504c5445,
    IDAT = 0x49444154,
    IEND = 0x49454e44,
  };

  auto interlace(uint pass, uint index) -> uint;
  auto inflateSize() -> uint;
  auto deinterlace(const uint8_t*& inputData, uint pass) -> bool;
  auto filter(uint8_t* outputData, const uint8_t* inputData, uint width, uint height) -> bool;
  auto read(const uint8_t* data, uint length) -> uint;
};

inline PNG::PNG() {
}

inline PNG::~PNG() {
  if(data) delete[] data;
}

inline auto PNG::load(const string& filename) -> bool {
  if(auto memory = file::read(filename)) {
    return load(memory.data(), memory.size());
  }
  return false;
}

inline auto PNG::load(const uint8_t* sourceData, uint sourceSize) -> bool {
  if(sourceSize < 8) return false;
  if(read(sourceData + 0, 4) != 0x89504e47) return false;
  if(read(sourceData + 4, 4) != 0x0d0a1a0a) return false;

  uint8_t* compressedData = nullptr;
  uint compressedSize = 0;

  uint offset = 8;
  while(offset < sourceSize) {
    uint length   = read(sourceData + offset + 0, 4);
    uint fourCC   = read(sourceData + offset + 4, 4);
    uint checksum = read(sourceData + offset + 8 + length, 4);

    if(fourCC == (uint)FourCC::IHDR) {
      info.width             = read(sourceData + offset +  8, 4);
      info.height            = read(sourceData + offset + 12, 4);
      info.bitDepth          = read(sourceData + offset + 16, 1);
      info.colorType         = read(sourceData + offset + 17, 1);
      info.compressionMethod = read(sourceData + offset + 18, 1);
      info.filterType        = read(sourceData + offset + 19, 1);
      info.interlaceMethod   = read(sourceData + offset + 20, 1);

      if(info.bitDepth == 0 || info.bitDepth > 16) return false;
      if(info.bitDepth & (info.bitDepth - 1)) return false;  //not a power of two
      if(info.compressionMethod != 0) return false;
      if(info.filterType != 0) return false;
      if(info.interlaceMethod != 0 && info.interlaceMethod != 1) return false;

      switch(info.colorType) {
      case 0: info.bytesPerPixel = info.bitDepth * 1; break;  //L
      case 2: info.bytesPerPixel = info.bitDepth * 3; break;  //R,G,B
      case 3: info.bytesPerPixel = info.bitDepth * 1; break;  //P
      case 4: info.bytesPerPixel = info.bitDepth * 2; break;  //L,A
      case 6: info.bytesPerPixel = info.bitDepth * 4; break;  //R,G,B,A
      default: return false;
      }

      if(info.colorType == 2 || info.colorType == 4 || info.colorType == 6) {
        if(info.bitDepth != 8 && info.bitDepth != 16) return false;
      }
      if(info.colorType == 3 && info.bitDepth == 16) return false;

      info.bytesPerPixel = (info.bytesPerPixel + 7) / 8;
      info.pitch = (int)info.width * info.bytesPerPixel;
    }

    if(fourCC == (uint)FourCC::PLTE) {
      if(length % 3) return false;
      for(uint n = 0, p = offset + 8; n < length / 3; n++) {
        info.palette[n][0] = sourceData[p++];
        info.palette[n][1] = sourceData[p++];
        info.palette[n][2] = sourceData[p++];
      }
    }

    if(fourCC == (uint)FourCC::IDAT) {
      compressedData = (uint8_t*)realloc(compressedData, compressedSize + length);
      memcpy(compressedData + compressedSize, sourceData + offset + 8, length);
      compressedSize += length;
    }

    if(fourCC == (uint)FourCC::IEND) {
      break;
    }

    offset += 4 + 4 + length + 4;
  }

  uint interlacedSize = inflateSize();
  auto interlacedData = new uint8_t[interlacedSize];

  bool result = inflate(interlacedData, interlacedSize, compressedData + 2, compressedSize - 6);
  free(compressedData);

  if(result == false) {
    delete[] interlacedData;
    return false;
  }

  size = info.width * info.height * info.bytesPerPixel;
  data = new uint8_t[size];

  if(info.interlaceMethod == 0) {
    if(filter(data, interlacedData, info.width, info.height) == false) {
      delete[] interlacedData;
      delete[] data;
      data = nullptr;
      return false;
    }
  } else {
    const uint8_t* passData = interlacedData;
    for(uint pass = 0; pass < 7; pass++) {
      if(deinterlace(passData, pass) == false) {
        delete[] interlacedData;
        delete[] data;
        data = nullptr;
        return false;
      }
    }
  }

  delete[] interlacedData;
  return true;
}

inline auto PNG::interlace(uint pass, uint index) -> uint {
  static const uint data[7][4] = {
    //x-distance, y-distance, x-origin, y-origin
    {8, 8, 0, 0},
    {8, 8, 4, 0},
    {4, 8, 0, 4},
    {4, 4, 2, 0},
    {2, 4, 0, 2},
    {2, 2, 1, 0},
    {1, 2, 0, 1},
  };
  return data[pass][index];
}

inline auto PNG::inflateSize() -> uint {
  if(info.interlaceMethod == 0) {
    return info.width * info.height * info.bytesPerPixel + info.height;
  }

  uint size = 0;
  for(uint pass = 0; pass < 7; pass++) {
    uint xd = interlace(pass, 0), yd = interlace(pass, 1);
    uint xo = interlace(pass, 2), yo = interlace(pass, 3);
    uint width  = (info.width  + (xd - xo - 1)) / xd;
    uint height = (info.height + (yd - yo - 1)) / yd;
    if(width == 0 || height == 0) continue;
    size += width * height * info.bytesPerPixel + height;
  }
  return size;
}

inline auto PNG::deinterlace(const uint8_t*& inputData, uint pass) -> bool {
  uint xd = interlace(pass, 0), yd = interlace(pass, 1);
  uint xo = interlace(pass, 2), yo = interlace(pass, 3);
  uint width  = (info.width  + (xd - xo - 1)) / xd;
  uint height = (info.height + (yd - yo - 1)) / yd;
  if(width == 0 || height == 0) return true;

  uint outputSize = width * height * info.bytesPerPixel;
  auto outputData = new uint8_t[outputSize];
  bool result = filter(outputData, inputData, width, height);

  const uint8_t* rd = outputData;
  for(uint y = yo; y < info.height; y += yd) {
    uint8_t* wr = data + y * info.pitch;
    for(uint x = xo; x < info.width; x += xd) {
      for(uint b = 0; b < info.bytesPerPixel; b++) {
        wr[x * info.bytesPerPixel + b] = *rd++;
      }
    }
  }

  inputData += outputSize + height;
  delete[] outputData;
  return result;
}

inline auto PNG::filter(uint8_t* outputData, const uint8_t* inputData, uint width, uint height) -> bool {
  uint8_t* wr = outputData;
  const uint8_t* rd = inputData;
  int bpp = info.bytesPerPixel, pitch = width * bpp;
  for(int y = 0; y < height; y++) {
    uint8_t filter = *rd++;

    switch(filter) {
    case 0x00:  //None
      for(int x = 0; x < pitch; x++) {
        wr[x] = rd[x];
      }
      break;

    case 0x01:  //Subtract
      for(int x = 0; x < pitch; x++) {
        wr[x] = rd[x] + (x - bpp < 0 ? 0 : wr[x - bpp]);
      }
      break;

    case 0x02:  //Above
      for(int x = 0; x < pitch; x++) {
        wr[x] = rd[x] + (y - 1 < 0 ? 0 : wr[x - pitch]);
      }
      break;

    case 0x03:  //Average
      for(int x = 0; x < pitch; x++) {
        short a = x - bpp < 0 ? 0 : wr[x - bpp];
        short b = y - 1 < 0 ? 0 : wr[x - pitch];

        wr[x] = rd[x] + (uint8_t)((a + b) / 2);
      }
      break;

    case 0x04:  //Paeth
      for(int x = 0; x < pitch; x++) {
        short a = x - bpp < 0 ? 0 : wr[x - bpp];
        short b = y - 1 < 0 ? 0 : wr[x - pitch];
        short c = x - bpp < 0 || y - 1 < 0 ? 0 : wr[x - pitch - bpp];

        short p = a + b - c;
        short pa = p > a ? p - a : a - p;
        short pb = p > b ? p - b : b - p;
        short pc = p > c ? p - c : c - p;

        auto paeth = (uint8_t)((pa <= pb && pa <= pc) ? a : (pb <= pc) ? b : c);

        wr[x] = rd[x] + paeth;
      }
      break;

    default:  //Invalid
      return false;
    }

    rd += pitch;
    wr += pitch;
  }

  return true;
}

inline auto PNG::read(const uint8_t* data, uint length) -> uint {
  uint result = 0;
  while(length--) result = (result << 8) | (*data++);
  return result;
}

inline auto PNG::readbits(const uint8_t*& data) -> uint {
  uint result = 0;
  switch(info.bitDepth) {
  case 1:
    result = (*data >> bitpos) & 1;
    bitpos++;
    if(bitpos == 8) { data++; bitpos = 0; }
    break;
  case 2:
    result = (*data >> bitpos) & 3;
    bitpos += 2;
    if(bitpos == 8) { data++; bitpos = 0; }
    break;
  case 4:
    result = (*data >> bitpos) & 15;
    bitpos += 4;
    if(bitpos == 8) { data++; bitpos = 0; }
    break;
  case 8:
    result = *data++;
    break;
  case 16:
    result = (data[0] << 8) | (data[1] << 0);
    data += 2;
    break;
  }
  return result;
}

}
