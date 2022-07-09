ASM=arm-linux-gnueabi-as
CC=arm-linux-gnueabi-gcc-10
NAME=$(notdir $(shell pwd))
TOOL=qemu-arm
OBJECTS=$(NAME).o
BINARY=$(NAME).elf

all: $(BINARY)

$(BINARY): $(OBJECTS)
	$(CC) -o $@ $^ -nostdlib

%.o:%.asm
	$(ASM) -o $@ $^

clean:
	rm *.o *.elf

run:
	$(TOOL) ./$(BINARY)
