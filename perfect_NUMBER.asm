include 'emu8086.inc'
print "enter a number " 
call scan_num
printn
mov ax,cx
mov t,cx
mov bx,2
mov dx,0
div bx 
mov cx,ax
mov ax,t
x:        
    mov ax,t 
    mov dx,0
    div cx  
    cmp dx,0
    je i
    loop x
i:
    add sum,cx
    dec cx
    cmp cx,0
    je compare
    jmp x  
compare:
    mov ax,t
    cmp ax,sum
    je perfect
    print " not perfect number " 
    ret
perfect:
    print " perfect number "
     ret
    

t dw 0
sum dw 0
define_scan_num
define_print_num
define_print_num_uns