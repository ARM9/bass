build := optimize
console := true
include ../nall/GNUmakefile

flags += -I..

name := bass
objects := obj/bass.o

all: $(objects)
	$(compiler) -o out/$(name) $(objects) $(link)

obj/bass.o: bass.cpp bass.hpp $(call rwildcard,core/) $(call rwildcard,architecture/)
	$(compiler) $(cppflags) $(flags) -o obj/bass.o -c bass.cpp

clean:
	-@$(call delete,obj/*)
	-@$(call delete,out/*)

install:
ifeq ($(shell id -un),root)
	$(error "make install should not be run as root")
else ifneq ($(filter $(platform),linux bsd),)
	if [ -f out/$(name) ]; then cp out/$(name) $(prefix)/bin/$(name); fi
	mkdir -p $(prefix)/share/$(name)/architectures/
	cp -R data/architectures/* $(prefix)/share/$(name)/architectures/
endif

uninstall:
ifeq ($(shell id -un),root)
	$(error "make uninstall should not be run as root")
else ifneq ($(filter $(platform),linux bsd),)
	if [ -f $(prefix)/bin/$(name) ]; then rm $(prefix)/bin/$(name); fi
endif
