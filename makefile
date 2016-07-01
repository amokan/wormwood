
ST32MAP = -Ttext 0x0 -Tbss 0x20000000
OS:=$(shell uname -s | cut -f1 -d_)
assFlags=-W -mthumb-interwork -mapcs-32 -march=armv7 -mcpu=cortex-m3
lnkFlags=-v $(ST32MAP) -e0 -nostartfiles
objFlags=-O binary
assLinux=arm-linux-gnueabi-as
lnkLinux=arm-linux-gnueabi-ld
objLinux=arm-linux-gnueabi-objcopy
assDarwin=arm-none-eabi-as
lnkDarwin=arm-none-eabi-ld
objDarwin=arm-none-eabi-objcopy
assCYGWIN=arm-elf-as
lnkCYGWIN=arm-elf-ld
objCYGWIN=arm-elf-objcopy
export ass = $(ass$(OS)) $(assFlags)
export lnk = $(lnk$(OS)) $(lnkFlags)
export obj = $(obj$(OS)) $(objFlags)

main:
	-$(ass) -o build/wormwood.o wormwood.s
	-$(lnk) -o build/wormwood.elf build/wormwood.o
	-$(obj) build/wormwood.elf build/wormwood.bin

clean:
	rm -r build/*

