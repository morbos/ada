Traffic2
--------

This is a the CPU part of a workalike for a cheap Aliexpress signal
light. The cheap traffic light from Aliexpress just flashes red amber
and green 5 times in sequence. Notably, green is on the *top* of the
stack. (this is bad as some colour blind folks rely on physical lamp
position).

The first part of my project is to replace the FW with a more
realistic traffic light seq. Here we choose the UK lights,
particularly those from the pre-LED days. Those had a rather nice fade
as the filament cooled. UK lights are quite different from US lights
in that they go from Red to Red&Amber then Green. The transition is 2
seconds precisely. The transition from green to red through amber is
precisely 3 seconds.

The FW implementation is for a pseudo random time on red and
green. This is seeded by reading the ADC Vrefint bit0 at high speed to
get entropy. The result of this is that every power up of the lights
should be a unique presentation.

The FW is complete on the STM32C011 for this project.

The board as mentioned in traffic is back and went through testing.
1) Use of an active high LED driver caused CMOS latchup
2) USB-C symbol and footprint were wrong. It's a connector vs
receptacle.

A new board is on the way:
1) Active low LED driver. (This was tested w/rework)
2) Correct USB-C receptacle symbol and footprint. The Aliexpress one I
purchased is actually a copy of an Amphenol one.
3) The FW was modified to invert the PWM polarity wrt active low
drive.

