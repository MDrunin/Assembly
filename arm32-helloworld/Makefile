ASM=arm-linux-gnueabi-as
CC=arm-linux-gnueabi-gcc-10
NAME=$(notdir $(shell pwd))
TOOL=qemu-arm
CFLAGS=-nostdlib -o

#TODO add support for multiple .o
OBJECTS=$(NAME).o
BINARY=$(NAME).elf

all: $(BINARY)

$(BINARY): $(OBJECTS)
	$(CC) $(CFLAGS) $@ $^

%.o:%.asm
	$(ASM) -o $@ $^

clean:
	rm *.o *.elf

run:
	$(TOOL) ./$(BINARY)
