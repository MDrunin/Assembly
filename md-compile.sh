#! /bin/bash

# Script for quick compile .asm into .elf
# Usage md-compile.sj NAME.asm 

arm-linux-gnueabi-as $1.asm -o $1.o
arm-linux-gnueabi-gcc-10 $1.o -o $1.elf -nostdlib
