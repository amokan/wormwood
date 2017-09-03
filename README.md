# wormwood
---

An effort to experiment with the [Shbobo Shnth](http://shbobo.net) firmware.

## General Info

The Shnth is running on a ARM Cortex M3 and the firmware found here is written in assembly language with a lot of macros and a fair sprinkling of obfuscation, so expect to be confused at times.

I would asssume the firmware was written by [Peter Blasser](http://petermopar.blogspot.com/). So credit to him for his work on the original code.

## Original Source

The `wanilla` files are from the Shnth483 release found at [http://shbobo.net/shnth483.zip](http://shbobo.net/shnth483.zip)

See the included `license.txt` file for the original license info (copyleft).

## Building

I'm building on OSX Sierra (10.12.6) with the `arm-none-eabi-gcc` toolchain setup. You will likely be able to build with other ARM tooling so please adjust the makefile as needed for your system.

`make` should generate a new binary located at `build/wormwood.bin`


## Misc Notes

### Install the ARM GCC stuff on OSX

* `brew tap PX4/homebrew-px4`
* `brew install gcc-arm-none-eabi`
