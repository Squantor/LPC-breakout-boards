LPC812-breakout-JTAG
====================

Breakout board for the LPC812 TTSOP20 chip with on board regulator, crystal pads, reset/bootload buttons and 10 pin JTAG.


There are plenty of LPC812 breakout boards, why another one? Well this one has a JTAG (SWD) connector for debugging, 20 pins TTSOP mapping 1 on 1. Next to that it has the prerequisite 2 buttons for reset and enter bootload mode, this is more to recover from incorrect PLL settings then using the bootloader mode but if its always nice to have a fallback.
It has a footprint for TS9011SCXRF regulator and a 12MHz crystal. The TS9011SCXRF is pin compatible with the MCP1703 regulator. The crystal can be useful if you need a higher accuracy clock.

TODO's:
* Fix silk issues with regulator
* Place the decoupling cap at a more friendly location and use a 0603
* Enlarge footprint to 24 pins to allow top pins to access the regulator
* Shrink edges of the board (evaluate after deliver)

You can order PCB's [here at OSH Park](https://oshpark.com/shared_projects/cvMYU9qG) per three for $4.20 including shipping.

This project has been inspired by [another LPC812 breakout](https://github.com/cpldcpu/LPC812breakout) but did not have the features I wanted.

Status
======

 - 2014/04/18 V1.0 boards Ordered at OSHpark

Pictures
========

Coming soon.
