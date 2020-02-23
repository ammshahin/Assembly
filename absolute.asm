.model small
.stack 100h
include emu8086.inc


.code

main proc
        mov bl,-5 
        
        
        
        printn ' '
        
        cmp bl,0
        jge L1
        jmp L2
        
        L2: neg bl  
            add bl,48
            mov ah,2
            mov dl,bl
            int 21h
            jmp exit
            
            
        L1: 
            add bl,48 
            mov ah,2
            mov dl,bl
            int 21h
          
          
        exit: endp

end main