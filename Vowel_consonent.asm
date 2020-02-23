.model small
.stack 100h
include emu8086.inc


.code

main proc
        mov ah,1
        int 21h
        mov bl,al
        printn ' '
                              
        cmp bl,'a'
        je V
        jmp L1
        
        L1:cmp bl,'e'
        je V
        jmp L2
        
        L2:cmp bl,'i'
        je V
        jmp L3
        
        L3:cmp bl,'o'
        je V
        jmp L4
        
        L4:cmp bl,'u'
        je V
        jmp C
        
        V: 
            printn 'Vowel!'
            jmp exit
            
            
        C: 
           printn 'Consonent!'
            jmp exit
        
       
        
        exit: endp

end main
