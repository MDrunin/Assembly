#! /bin/bash


arm-linux-gnueabi-as $1.asm -o $1.o
arm-linux-gnueabi-gcc-10 $1.o -o $1.elf -nostdlib
