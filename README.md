LPC812-breakout-JTAG
====================

Breakout board for the LPC812 TTSOP20 chip. 
Why another breakout? Well this one has a JTAG (SWD) connector for debugging. Next to that it has the prerequisite 2 buttons for reset and enter bootload mode, this is more to recover from incorrect PLL settings then using the bootloader mode but if its always nice to have a fallback.
It has a footprint for TS9011SCXRF regulator and a 12MHz crystal. The TS9011SCXRF is pin compatible with the MCP1703 regulator if you want to use that one. The crystal can be useful if you need a higher accuracy clock.
My apologies for the 0402 decoupling cap, you can always fit a 0603 or even a 0805 between the VSS VCC pins on the header.

TODO:
Fix silk issues with passives. I really need to make my own library for this.
