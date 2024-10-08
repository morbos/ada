with HAL;             use HAL;
with HAL.UART;        use HAL.UART;
package CRC16 is

   --  ported from:
   --  https://os.mbed.com/users/EmLa/code/CRC16
   function CalculateCRC16 (Input : UART_Data_8b; Len : Integer) return UInt16;

private

   CRC16Table : constant UInt16_Array :=
     (
           16#0000#, 16#1189#, 16#2312#, 16#329B#, 16#4624#, 16#57AD#, 16#6536#, 16#74BF#,
           16#8C48#, 16#9DC1#, 16#AF5A#, 16#BED3#, 16#CA6C#, 16#DBE5#, 16#E97E#, 16#F8F7#,
           16#0919#, 16#1890#, 16#2A0B#, 16#3B82#, 16#4F3D#, 16#5EB4#, 16#6C2F#, 16#7DA6#,
           16#8551#, 16#94D8#, 16#A643#, 16#B7CA#, 16#C375#, 16#D2FC#, 16#E067#, 16#F1EE#,
           16#1232#, 16#03BB#, 16#3120#, 16#20A9#, 16#5416#, 16#459F#, 16#7704#, 16#668D#,
           16#9E7A#, 16#8FF3#, 16#BD68#, 16#ACE1#, 16#D85E#, 16#C9D7#, 16#FB4C#, 16#EAC5#,
           16#1B2B#, 16#0AA2#, 16#3839#, 16#29B0#, 16#5D0F#, 16#4C86#, 16#7E1D#, 16#6F94#,
           16#9763#, 16#86EA#, 16#B471#, 16#A5F8#, 16#D147#, 16#C0CE#, 16#F255#, 16#E3DC#,
           16#2464#, 16#35ED#, 16#0776#, 16#16FF#, 16#6240#, 16#73C9#, 16#4152#, 16#50DB#,
           16#A82C#, 16#B9A5#, 16#8B3E#, 16#9AB7#, 16#EE08#, 16#FF81#, 16#CD1A#, 16#DC93#,
           16#2D7D#, 16#3CF4#, 16#0E6F#, 16#1FE6#, 16#6B59#, 16#7AD0#, 16#484B#, 16#59C2#,
           16#A135#, 16#B0BC#, 16#8227#, 16#93AE#, 16#E711#, 16#F698#, 16#C403#, 16#D58A#,
           16#3656#, 16#27DF#, 16#1544#, 16#04CD#, 16#7072#, 16#61FB#, 16#5360#, 16#42E9#,
           16#BA1E#, 16#AB97#, 16#990C#, 16#8885#, 16#FC3A#, 16#EDB3#, 16#DF28#, 16#CEA1#,
           16#3F4F#, 16#2EC6#, 16#1C5D#, 16#0DD4#, 16#796B#, 16#68E2#, 16#5A79#, 16#4BF0#,
           16#B307#, 16#A28E#, 16#9015#, 16#819C#, 16#F523#, 16#E4AA#, 16#D631#, 16#C7B8#,
           16#48C8#, 16#5941#, 16#6BDA#, 16#7A53#, 16#0EEC#, 16#1F65#, 16#2DFE#, 16#3C77#,
           16#C480#, 16#D509#, 16#E792#, 16#F61B#, 16#82A4#, 16#932D#, 16#A1B6#, 16#B03F#,
           16#41D1#, 16#5058#, 16#62C3#, 16#734A#, 16#07F5#, 16#167C#, 16#24E7#, 16#356E#,
           16#CD99#, 16#DC10#, 16#EE8B#, 16#FF02#, 16#8BBD#, 16#9A34#, 16#A8AF#, 16#B926#,
           16#5AFA#, 16#4B73#, 16#79E8#, 16#6861#, 16#1CDE#, 16#0D57#, 16#3FCC#, 16#2E45#,
           16#D6B2#, 16#C73B#, 16#F5A0#, 16#E429#, 16#9096#, 16#811F#, 16#B384#, 16#A20D#,
           16#53E3#, 16#426A#, 16#70F1#, 16#6178#, 16#15C7#, 16#044E#, 16#36D5#, 16#275C#,
           16#DFAB#, 16#CE22#, 16#FCB9#, 16#ED30#, 16#998F#, 16#8806#, 16#BA9D#, 16#AB14#,
           16#6CAC#, 16#7D25#, 16#4FBE#, 16#5E37#, 16#2A88#, 16#3B01#, 16#099A#, 16#1813#,
           16#E0E4#, 16#F16D#, 16#C3F6#, 16#D27F#, 16#A6C0#, 16#B749#, 16#85D2#, 16#945B#,
           16#65B5#, 16#743C#, 16#46A7#, 16#572E#, 16#2391#, 16#3218#, 16#0083#, 16#110A#,
           16#E9FD#, 16#F874#, 16#CAEF#, 16#DB66#, 16#AFD9#, 16#BE50#, 16#8CCB#, 16#9D42#,
           16#7E9E#, 16#6F17#, 16#5D8C#, 16#4C05#, 16#38BA#, 16#2933#, 16#1BA8#, 16#0A21#,
           16#F2D6#, 16#E35F#, 16#D1C4#, 16#C04D#, 16#B4F2#, 16#A57B#, 16#97E0#, 16#8669#,
           16#7787#, 16#660E#, 16#5495#, 16#451C#, 16#31A3#, 16#202A#, 16#12B1#, 16#0338#,
           16#FBCF#, 16#EA46#, 16#D8DD#, 16#C954#, 16#BDEB#, 16#AC62#, 16#9EF9#, 16#8F70#);

end CRC16;
