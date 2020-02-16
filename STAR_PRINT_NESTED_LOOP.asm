INCLUDE EMU8086.INC
ORG 100H



   MOV BL,10 
M:         
    
    MOV CL,10
TOP:PRINT '*'
    DEC CL
    JNZ TOP
    PRINTN ' '
                 
  DEC BL
  JNZ M 
   
      
