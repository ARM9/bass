bass	:= ../../bass

TARGET	:= $(shell basename $(CURDIR))

all:
	$(bass) -create -o $(TARGET).bin $(TARGET).asm
	$(bass) -create -o branch.bin branch.asm

