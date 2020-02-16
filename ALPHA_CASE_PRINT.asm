INCLUDE EMU8086.INC
ORG 100H


   
 MOV BL,65 
 MOV BH,97
 MOV CL,1
 TOP:PRINTN 
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    ADD BH,1
    ADD BL,1
    INC CL
    CMP CL,26
    JNE TOP

   
      
