# this is an operating system i made adapted from many tutorials and my own brain
# the lib folder is required qemu libraries
# the os folder is the actual os
# os/boot.asm is the bios boot file
# bios-256k.bin efi-e1000.rom kvmvapic.bin vgabios-stdvga.bin are files needed by qemu but for some reason don't get installed with it


LD_LIBRARY_PATH=$LD_LIBRARY_PATH:lib # add our lib folder to the library path

nasm -f bin os/boot.asm -o boot.bin # compile os/boot.bin

qemu-system-x86_64 boot.bin # run boot.bin
