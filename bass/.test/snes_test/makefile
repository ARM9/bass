bass	:= ../../bass

SFILES	:= $(wildcard *.asm)
BINFILES:= $(SFILES:.asm=.bin)

all: $(BINFILES)

%.bin : %.asm
	$(bass) -create -o $@ $<

clean:
	rm $(BINFILES)
