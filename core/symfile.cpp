
bool Bass::Symfile::write(const string& filename, bool create) {
  file symbolFile;
  if(filename.empty()) return true;

  if(!file::exists(filename)) create = true;

  if(!symbolFile.open(filename, create ? file::mode::write : file::mode::modify)) {
    print("warning: unable to open symbol file: ", filename, "\n");;
    return false;
  }
  symbolFile.write(filename, symbolBuffer);
  return true;
}

void Bass::Symfile::append(const string& entry) {
  symbolBuffer.append(entry);
}

// vim:sts=2 sw=2
