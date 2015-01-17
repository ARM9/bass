#include <nall/platform.hpp>
#include <nall/any.hpp>
#include <nall/base64.hpp>
#include <nall/bit.hpp>
#include <nall/bitvector.hpp>
#include <nall/bmp.hpp>
#include <nall/compositor.hpp>
#include <nall/config.hpp>
#include <nall/directory.hpp>
#include <nall/dl.hpp>
#include <nall/dsp.hpp>
#include <nall/file.hpp>
#include <nall/filemap.hpp>
#include <nall/function.hpp>
#include <nall/group.hpp>
#include <nall/gzip.hpp>
#include <nall/hashset.hpp>
#include <nall/hid.hpp>
#include <nall/http.hpp>
#include <nall/image.hpp>
#include <nall/inflate.hpp>
#include <nall/intrinsics.hpp>
#include <nall/invoke.hpp>
#include <nall/map.hpp>
#include <nall/matrix.hpp>
#include <nall/maybe.hpp>
#include <nall/mosaic.hpp>
#include <nall/png.hpp>
#include <nall/priority-queue.hpp>
#include <nall/property.hpp>
#include <nall/public-cast.hpp>
#include <nall/random.hpp>
#include <nall/serializer.hpp>
#include <nall/set.hpp>
#include <nall/stdint.hpp>
#include <nall/stream.hpp>
#include <nall/string.hpp>
#include <nall/thread.hpp>
#include <nall/traits.hpp>
#include <nall/unzip.hpp>
#include <nall/utility.hpp>
#include <nall/varint.hpp>
#include <nall/vector.hpp>
#include <nall/zip.hpp>
#include <nall/beat/delta.hpp>
#include <nall/beat/linear.hpp>
#include <nall/beat/metadata.hpp>
#include <nall/beat/patch.hpp>
#include <nall/beat/multi.hpp>
#include <nall/beat/archive.hpp>
#include <nall/stream/stream.hpp>
#include <nall/stream/memory.hpp>
#include <nall/stream/vector.hpp>
#ifdef _WIN32
  #include <nall/windows/guid.hpp>
  #include <nall/windows/registry.hpp>
  #include <conio.h>
#endif
using namespace nall;

void test1() {
  maybe<unsigned> value;
  if(value) print(value(), "\n");
  value = 16;
  if(value) print(value(), "\n");
  value = nothing;
  if(value) print(value(), "\n");
}

void test2() {
  maybe<string> value;
  if(value) print(value(), "\n");
  value = {"test", 16};
  if(value) print(value(), "\n");
  value.reset();
  if(value) print(value(), "\n");
}

maybe<unsigned> find(bool match) {
  if(match) return 42;
  return nothing;
}

void test3() {
  if(auto result = find(0)) print(result(), "\n");
  if(auto result = find(1)) print(result(), "\n");
  print(find(0)(37), "\n");
  print(find(1)(43), "\n");
}

void test4() {
  bool found = (bool)string{"helloworld"}.find("llo!");
  print(found, "\n");
}

int main(int argc, char** argv) {
  test1();
  test2();
  test3();
  test4();
  return 0;
}
