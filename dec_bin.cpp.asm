include 'emu8086.inc' 
       
;bin = bin+ rem*i
; i=i*10

   
print "enter  a number " 

printn
call scan_num
printn
    
mov ax,cx
mov t,ax
mov bx,10
mov d,2

x:      

    cmp ax,0
    je y
    mov dx,0
    div d
    mov q,ax
    mov ax,dx
    mul i
    add bin,ax
    mov ax,i
    mul bx
    
    mov i,ax 
    mov ax,q
    jmp x 
    
y:
    mov ax,bin
    printn
    call print_num
    ret 
    
d dw 0 
q dw 0   
i dw 1
t dw 0
bin dw 0
define_scan_num
define_print_num
define_print_num_uns