bass	:= ../../bass/out/bass

SFILES	:= $(wildcard *.asm)
BINFILES:= $(SFILES:.asm=.bin)

.PHONY: $(SFILES)

all: $(BINFILES)

%.bin : %.asm
	$(bass) -strict -benchmark -o $@ $<

clean:
	rm $(BINFILES)
