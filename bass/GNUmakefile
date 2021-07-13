name := bass
build := release
console := true
flags += -I..

nall.path := ../nall
include $(nall.path)/GNUmakefile

objects := obj/bass.o

obj/bass.o: bass.cpp

all: $(objects)
	$(info Linking out/$(name) ...)
	+@$(compiler) -o out/$(name) $(objects) $(options)

verbose: nall.verbose all;

clean:
	$(call delete,obj/*)
	$(call delete,out/*)

install: all
ifeq ($(shell id -un),root)
	$(error "make install should not be run as root")
else ifneq ($(filter $(platform),linux bsd),)
	cp out/$(name) $(prefix)/bin/$(name)
	mkdir -p $(prefix)/share/$(name)/architectures/
	cp -R data/architectures/* $(prefix)/share/$(name)/architectures/
endif

uninstall:
ifeq ($(shell id -un),root)
	$(error "make uninstall should not be run as root")
else ifneq ($(filter $(platform),linux bsd),)
	rm -f $(prefix)/bin/$(name)
endif

-include obj/*.d
