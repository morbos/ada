This is a follow on to the Door2 project. The idea is similar, a
magnet's position is detected by a sensor and the door stance is
deduced from that position. When the mailbox is closed the sensor
detects the absence of a magnetic field, when open, the magnet moves
close to the sensor giving the new state. One new feature of this code
base is also an analogue light sensor (CDS cell). That sensor is
converted by the ADC to give a voltage that is in proportion to the
amount of ambient light present. This design uses two approaches for
LoRa message generation and part sleep.

When nighttime
--------------
Every minute or so, via the RTC, the LoRa module awakes from SHUTDOWN
to read the CDS cell. It it's daylight, we switch to daytime mode,
otherwise we stay in nighttime mode

When daytime
------------
Rather than using the RTC to wakeup the module, we switch to using the
INT signal from the magnetometer. This necessitates running at a
pretty high power as the lowest freq for the magnetometer is about 1hz
so every 1hz it will do a reading, if that reading is out of range of
what we are expecting, it will signal in INT to the module which will
then report the new door stance over LoRa. This is also considered a
mail delivery event
