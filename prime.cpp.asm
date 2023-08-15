include 'emu8086.inc' 

mov ax,7
mov cx,0 
mov bx,ax

k:    
    mov ax,bx
    cmp i,ax
    jg r
    mov dx,0 
    div i
    cmp dx,0
    je q 
    add i,1
    jmp k
    
    
q:
    add cx,1
    add i,1
    jmp k 
    
r:
    cmp cx,2
    je p   
    printn
    print " not prime "
    ret 
    
p:
    printn
    print "prime "

i dw 1

define_print_num
define_print_num_uns
define_scan_num