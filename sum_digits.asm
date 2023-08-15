include 'emu8086.inc'
         
call scan_num
mov ax,cx
mov cx,10    


j:
    mov dx,0
    div cx 
    add sum,dx
    cmp ax,0
    jne j

mov ax,sum  
printn
call print_num
   ret
sum dw 0
define_print_num
define_print_num_uns
define_scan_num 
hlt
