.model small
.stack 100h
include emu8086.inc


.code

main proc
        mov ah,1
        int 21h
        mov bl,al
        printn ' '
        int 21h
        mov cl,al
         
        
        printn ' '
        
        cmp bl,cl
        jge L1
        jmp L2
        
        L1: mov ah,bl
            mov bl,cl
            mov cl,ah   
            
            mov ah,2
            printn 'Sorted Characters:'
            jmp printer
            
            
        L2: 
            
            mov ah,2 
            printn 'Already Sorted! :'
            jmp printer
        
        printer: mov dl,bl
            int 21h 
            mov dl,cl
            int 21h
            jmp exit
        
        
        exit: endp

end main