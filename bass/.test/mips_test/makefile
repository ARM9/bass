bass	:= ../../bass

TARGET	:= $(shell basename $(CURDIR))

all:
	$(bass) -create -o $(TARGET).bin $(TARGET).asm
	mips64-elf-objdump -b binary -mmips:4300 -EB -D $(TARGET).bin > dis.asm

