AS		:= ../../bass

ASFLAGS	:= -benchmark -create

TARGET	:= $(shell basename $(CURDIR))
export OUTPUT	:= $(CURDIR)/$(TARGET).sfc

ASFLAGS	+= -d ROM_NAME=$(TARGET).sfc -o $(TARGET).sfc

#------------------------------------------------
.PHONY: clean

all:
	$(AS) $(ASFLAGS) main.asm

clean:
	rm -rf $(OUTPUT)

