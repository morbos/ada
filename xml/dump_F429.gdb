set pagination off
set logging overwrite on
set logging file DMA2.log
set logging on
set logging redirect on
x/256x 0x40026400
set logging redirect off
set logging off
set logging file RCC.log
set logging on
set logging redirect on
x/256x 0x40023800
set logging redirect off
set logging off
set logging file ADC1.log
set logging on
set logging redirect on
x/21x 0x40012000
set logging redirect off
set logging off
set logging overwrite off
