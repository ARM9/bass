//bass
//license: ISC
//project started: 2013-09-27

#include "bass.hpp"
#include "core/core.cpp"
#include "architecture/table/table.cpp"

#include <nall/main.hpp>
auto nall::main(Arguments arguments) -> void {
  if(!arguments) {
    print(stderr, string{"bass", terminal::color::blue(" v19\n")});
    print(stderr, "\n");
    print(stderr, "usage:\n");
    print(stderr, "  bass [options] source [source ...]\n");
    print(stderr, "\n");
    print(stderr, "options:\n");
    print(stderr, "  -o target        specify default output filename [overwrite]\n");
    print(stderr, "  -m target        specify default output filename [modify]\n");
    print(stderr, "  -d name[=value]  create define with optional value\n");
    print(stderr, "  -c name[=value]  create constant with optional value\n");
    print(stderr, "  -strict          upgrade warnings to errors\n");
    print(stderr, "  -benchmark       benchmark performance\n");
    exit(EXIT_FAILURE);
  }

  string targetFilename;
  bool create = false;
  if(arguments.take("-o", targetFilename)) create = true;
  if(arguments.take("-m", targetFilename)) create = false;

  vector<string> defines;
  string define;
  while(arguments.take("-d", define)) defines.append(define);

  vector<string> constants;
  string constant;
  while(arguments.take("-c", constant)) constants.append(constant);

  bool strict = arguments.take("-strict");
  bool benchmark = arguments.take("-benchmark");

  if(arguments.find("-*")) {
    print(stderr, "error: unrecognized argument(s)\n");
    exit(EXIT_FAILURE);
  }

  vector<string> sourceFilenames;
  for(auto& argument : arguments) sourceFilenames.append(argument);

  clock_t clockStart = clock();
  Bass bass;
  bass.target(targetFilename, create);
  for(auto& sourceFilename : sourceFilenames) {
    bass.source(sourceFilename);
  }
  for(auto& define : defines) {
    auto p = define.split("=", 1L);
    bass.define(p(0), p(1));
  }
  for(auto& constant : constants) {
    auto p = constant.split("=", 1L);
    bass.constant(p(0), p(1, "1"));
  }
  if(!bass.assemble(strict)) {
    print(stderr, "bass: assembly failed\n");
    exit(EXIT_FAILURE);
  }
  clock_t clockFinish = clock();
  if(benchmark) {
    print(stderr, "bass: assembled in ", (double)(clockFinish - clockStart) / CLOCKS_PER_SEC, " seconds\n");
  }
}
