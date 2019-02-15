# LPC824 TSOP20 breakout test program
This software project contains the code to fully test out a LPC824 TSOP20 breakout board.
## checking out
use ```git clone --recurse-submodules https://github.com/Squantor/LPC-breakout-boards.git``` to clone the repo and its submodules.
## compiling
Use make to compile:
```
make debug
```
There is also a release version but not really used. There is also a make target that compiles the proper target (debug or release) and loads it into the board with the selected black magic probe type (ftdi or usb type).
```
make gdbftdidebug
make gdbftdirelease
make gdbusbdebug
make gdbusbrelease
```
If the program hits the end breakpoint at main, the board is okay. Still need to find a nicer way to give visual or audio feedback to the user.
### Depedencies
This program depends on my slightly modified version of [LPCopen](https://github.com/Squantor/lpc_chip_82x.git). This is automatically checked out when using ```git clone --recurse-submodules```.
## usage
To use the software you need the following hardware:
* LPC824 breakout board
* [Black magic probe](https://github.com/blacksphere/blackmagic)
* LPC824 test board, either homebrew or use the bed of nails tester in the hardware subdirectory
## Tests
A set of tests is performed to verify functionality.
### Crystal
The test program first initializes the crystal oscillator, if any problems occur there the program will hang on a while loop while waiting for the crystal oscillator to start oscillating.
### GPIO's
The test algorithm for each GPIO is as follows:
1. Set the adjecent GPIO's to output and to low
2. Set the GPIO to test to input and turn on pull up
3. read GPIO continually with 10ms intervals, due to the capacitor to ground the voltage will slowly climb
4. When a solid high is measured (32 samples) proceed to next step
5. shut off pull up and turn on pull down
6. read GPIO continually with 10ms intervals, due to the capacitor to ground the voltage will slowly fall
7. When a solid low is measured (32 samples) proceed to next step
8. Go to next GPIO in the list
# TODO
The following tasks are still open:
* Importing all the libraries
* make crystal test routine
* make GPIO test routine
* merge all breakout test programs into one unified project
* Start creating the bed of nails tester (hardware task)