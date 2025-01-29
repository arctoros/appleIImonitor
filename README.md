The changes I made:

1. Remove RTS/CTS in bios
2. Include test.s in bios
3. Change transmission delay to $7D in bios
4. Set baud to 115200 in wozmon
5. Store value to ACIA_STATUS to reset
6. Initialize A in wozmon to escape $1B


The output of the monitor:  
A1E4-   A9 42       LDA   #$42  
 A=42 X=FF Y=8F P=78 S=CC  
*s  
  
  
A1E6-   C9 36       CMP   #$36  
 A=42 X=FF Y=8F P=79 S=CC  
*s  
  
  
A1E8-   90 04       BCC   $A1EE  
 A=42 X=FF Y=8F P=79 S=CC  
*s  
  
  
A1EA-   F0 08       BEQ   $A1F4  
 A=42 X=FF Y=8F P=79 S=CC  
*s  
  
  
A1EC-   D0 0A       BNE   $A1F8  
 A=42 X=,, Y=8, P=79 S=))  
*s  
  
  
A264-   00          BRK     
A264-    A=42 X=FF Y=8F P=79 S=CC  
*  
  
