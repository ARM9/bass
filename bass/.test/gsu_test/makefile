bass	:= ../../bass
gsudis	:= gsudis

TARGET	:= $(shell basename $(CURDIR))

all:
	$(bass) -create -o $(TARGET).bin $(TARGET).asm 
	$(gsudis) -e80f9 $(TARGET).bin > dis.asm

