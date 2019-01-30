include ../nall/Makefile

application := bass
flags := $(flags) -O3 -fomit-frame-pointer -I..
link := $(link) -static -static-libgcc -static-libstdc++ -s
#flags := $(flags) -g -I..
#link := $(link)
objects := obj/bass.o

all: dir $(objects)
	$(compiler) -o $(application) $(objects) $(link)

dir:
	@mkdir -p obj

obj/bass.o: bass.cpp bass.hpp $(call rwildcard,core/*) $(call rwildcard,arch/*)
	$(compiler) $(cppflags) $(flags) -o obj/bass.o -c bass.cpp

install:
ifneq ($(shell id -un),root)
	$(error "make install must be run as root")
else
	cp $(application) /usr/local/bin/$(application)
endif

uninstall:
ifneq ($(shell id -un),root)
	$(error "make uninstall must be run as root")
else
	rm /usr/local/bin/$(application)
endif

clean:
	-@$(call delete,obj/*.o)

test:
	make -C .test
