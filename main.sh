# this is an operating system i made adapted from many tutorials and my own brain
# the lib folder is required qemu libraries
# the os folder is the actual os
# os/boot.asm is the bios boot file
# bios-256k.bin efi-e1000.rom kvmvapic.bin vgabios-stdvga.bin are files needed by qemu but for some reason don't get installed with it

if ! type "nasm" > /dev/null; then # install nasm if it doesn't exist
	install-pkg nasm
fi
if ! type "qemu-system-x86_64" > /dev/null; then # install qemu if it doesn't exist
	install-pkg qemu # qemu is the whole package which includes qemu functions
fi

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:lib # add out lib folder to the library path

nasm -f bin os/boot.asm -o boot.bin # compile os/boot.bin

qemu-system-x86_64 boot.bin # run boot.bin