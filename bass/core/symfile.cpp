
void Bass::appendSymfile(const string& entry) {
  symfileBuffer.append(entry);
}

void Bass::appendSymfile(const string& label, unsigned data) {
  if(writePhase()) {
    string scopedName = label;
    if(scope.size()) scopedName = {scope.merge("."), ".", label};
    string entry = {hex<8, '0'>(data), " ", scopedName, "\n"};
    symfileBuffer.append(entry);
  }
}

bool Bass::writeSymfile(const string& filename, bool create) {
  file symbolFile;
  if(filename.empty()) return true;

  if(!file::exists(filename)) create = true;

  if(!symbolFile.open(filename, create ? file::mode::write : file::mode::modify)) {
    print("warning: unable to open symbol file: ", filename, "\n");;
    return false;
  }
  symbolFile.write(filename, symfileBuffer);
  return true;
}

// vim:sts=2 sw=2
