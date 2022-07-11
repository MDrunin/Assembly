#Compiling .elf from .asm

ASM=as
CC=gcc
NAME=$(notdir $(shell pwd))
ASFLAGS=--32 -o
CFLAGS=-nostdlib -m32 -o

#TODO add support for multiple .o
OBJECTS=$(NAME).o
BINARY=$(NAME).elf

all: $(BINARY)

$(BINARY): $(OBJECTS)
	$(CC) $(CFLAGS) $@ $^

%.o:%.asm
	$(ASM) $(ASFLAGS) $@ $^

clean:
	rm *.o *.elf
