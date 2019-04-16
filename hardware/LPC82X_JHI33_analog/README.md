# LPC824 QFN33 breakout 4 layer version, Analog evaluator
This is a LPC824 breakout for the QFN33 package, all GPIO's are brought out and contains SWD programming header, crystal footprint and a decoupling network (capacitors and ferrite beads) for the analog supplies.

This breakout can be used in prototyping PCB as the breakout headers match the 2.54mm pitch of such a PCB.

This board has a 4 layer stackup to provide a low impedance power supply. The power is also distributed into a digital and analog plane to measure differences in performance of the ADC.
## TODO's
Still some things need to be done:
* layout (Done)
* Review after a day (Done)
* Produce [OSHpark](https://oshpark.com/shared_projects/RuvO87MR) (Done)
* Assemble (Done)
* Full test program (Done)
* Upload some pictures and expand description (Done)
## BOM
Due to the general shortage of passive components, where mentioned, just whatever you can find.
* 0402 100nF 6.3V (generic)
* 0402 Ferrite bead (Murata BLM15PX601SN1D 600Ohm 900mA [Farnell](https://uk.farnell.com/2840091)
* 0402 100Ohm resistors for series dampening of programming lines
* 0402 100KOhm resistors for pullup on Reset, SWDIO and pulldown on SWDCLK
* 0603 1uF 6.3V (generic)
* LPC824 microcontroller [Farnell](https://uk.farnell.com/2890181)
* 12MHz crystal (optional) [Farnell](https://uk.farnell.com/2853917)
* The header I usually get from this vendor on [Ebay](https://www.ebay.com/usr/yixue2010), bit slow shipping and not the cheapest but the parts are good, he has a pretty sizable selection of connectors. 
## Pictures
See the non analog one, physically not a lot of differences.
