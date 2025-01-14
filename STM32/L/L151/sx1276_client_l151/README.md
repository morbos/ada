# LoRaDa on the STM32L151

A LoRa node that can send and receive messages when connected to a server.

## Prerequisites
- gnat2019
- A Heltec LoRa Node 151

## Building on Linux
- git clone https://github.com/morbos/Ada_Drivers_Library.git
- git clone https://github.com/morbos/embedded-runtimes.git
- git clone https://github.com/morbos/STM32.git
- vvv needed for the nodeID# patcher.rb script
- git clone https://github.com/morbos/ruby.git
- mv ../embedded-runtimes Ada_Drivers_Library
- cd STM32/L/L151/sx1276_client_l151
- make

## Openocd

openocd can be found here:
https://github.com/morbos/openocd-0.10.1

once built:
```
root@ubuntu:~/openocd-0.10.1/tcl# ../src/openocd -f board/heltec151.cfg
```

## GDB

Writing to flash&debug can be done some .gdbinit macros:

```
define flash
  target extended-remote 127.0.0.1:3333
  monitor reset halt
  load
  monitor reset init
  b main
  c
end
define debug
  target extended-remote 127.0.0.1:3333
  monitor reset init
  b main
  c
end
```
Then start the debugger. Note the use of patched ELF32 #2 using the Ruby script in the make.

```
hedley@ubuntu:~/ada/STM32/L/L151/sx1276_client_l151% arm-eabi-gdb obj/Debug/sx1276_l151_2
...
(gdb) flash
...
(gdb) c
```
