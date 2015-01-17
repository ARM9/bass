export PATH:=$(PATH):$(CURDIR)

bass	:= ../../bass
gsudis	:= gsudis

export output	:= $(shell basename $(CURDIR)).sfc

all:
	@rm -f $(output)
	$(bass) main.asm -o $(output)
	$(gsudis) -e80f9 $(output) > dis.asm

