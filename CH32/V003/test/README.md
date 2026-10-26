test
----
Simple test for the SO-8 CH32V003
This is a RiscV target. Bare metal development. The test is just to
kick the tyres, get the clock to 24Mhz and see 'SysTick' interrupts
plus my poor mans PRNG. There are no HW breakpoints on this SoC, none,
nada, gooseeggs. This makes debug of bare metal work challenging. The
'ebreak' insn is your friend as you can place them and look about.
         Asm ("ebreak", Volatile => True);
