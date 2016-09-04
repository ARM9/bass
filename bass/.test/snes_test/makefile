bass	:= ../../bass

SFILES	:= $(wildcard *.asm)
BINFILES:= $(SFILES:.asm=.bin)

.PHONY: $(SFILES)

all: $(BINFILES)

%.bin : %.asm
	$(bass) -create -o $@ $<

clean:
	rm $(BINFILES)
