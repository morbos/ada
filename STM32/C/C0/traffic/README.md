Traffic
-------

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

The FW is complete on the STM32C011 for this project. Now a board is
being crafted to fit in the same housing.
