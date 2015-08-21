
TESTS	:= $(shell ls -d */)

.PHONY: all

all:
	-$(foreach dir,$(TESTS),$(shell make -C $(dir); @fff))

