include 'emu8086.inc' 

print "enter a number : "
call scan_num

mov ax,cx
mov bx,ax
mov a,10 
mov b,10

x:
    cmp ax,0
    je k 
    mov cx,ax
    mov ax,rev
    mul a
    mov rev,ax
    mov ax,cx
    mov dx,0
    div b
    add rev,dx
    jmp x
 
k:
    mov ax,rev  
    printn
    call print_num
    ret
    
b dw 0   
a dw 0 
t dw 0    
rev dw 0
define_print_num
define_print_num_uns
define_scan_num
