#ifdef NALL_STRING_INTERNAL_HPP

namespace nall {

// "/foo/bar.c" -> "/foo/"
// "/foo/" -> "/foo/"
// "bar.c" -> "./"
string dir(string name) {
  for(signed i = name.length(); i >= 0; i--) {
    if(name[i] == '/' || name[i] == '\\') {
      name.resize(i + 1);
      break;
    }
    if(i == 0) name = "./";
  }
  return name;
}

// "/foo/bar.c" -> "bar.c"
// "/foo/" -> ""
// "bar.c" -> "bar.c"
string notdir(string name) {
  for(signed i = name.length(); i >= 0; i--) {
    if(name[i] == '/' || name[i] == '\\') {
      return (const char*)name + i + 1;
    }
  }
  return name;
}

// "/foo/bar/baz" -> "/foo/bar/"
// "/foo/bar/" -> "/foo/"
// "/foo/bar" -> "/foo/"
string parentdir(string name) {
  unsigned length = name.length(), paths = 0, prev, last;
  for(unsigned i = 0; i < length; i++) {
    if(name[i] == '/' || name[i] == '\\') {
      paths++;
      prev = last;
      last = i;
    }
  }
  if(last + 1 == length) last = prev;  //if name ends in slash; use previous slash
  if(paths > 1) name.resize(last + 1);
  return name;
}

// "/foo/bar.c" -> "/foo/bar"
string basename(string name) {
  for(signed i = name.length(); i >= 0; i--) {
    if(name[i] == '/' || name[i] == '\\') break;  //file has no extension
    if(name[i] == '.') {
      name.resize(i);
      break;
    }
  }
  return name;
}

// "/foo/bar.c" -> "c"
// "/foo/bar" -> ""
string extension(string name) {
  for(signed i = name.length(); i >= 0; i--) {
    if(name[i] == '/' || name[i] == '\\') return "";  //file has no extension
    if(name[i] == '.') {
      return (const char*)name + i + 1;
    }
  }
  return name;
}

string tempname() {
  string path = temppath();
  srand(time(nullptr));
  while(true) {
    uint32_t seed = rand();
    string filename = {path, ".temporary-", hex<8>(seed)};
    if(access(filename, F_OK) != 0) return filename;
  }
}

}

#endif
