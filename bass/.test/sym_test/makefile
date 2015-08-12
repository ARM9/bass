bass	:= ../../bass

TARGET	:= $(shell basename $(CURDIR))

all:
	$(bass) -sym bar.txt -sym $(TARGET).sym -create -o $(TARGET).bin $(TARGET).asm

