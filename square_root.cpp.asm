include 'emu8086.inc'

print "enter a number "
call scan_num
printn
mov bx,cx

mov ax,1 

x:
    mul ax
    cmp ax,bx
    je y 
    inc i 
    cmp i,bx
    je z
    mov ax,i 
    jmp x
y:
    mov ax,i
    printn
    call print_num
    ret
    
z:
    printn
    print "square root does not exist : "
    ret
    



i dw 1
define_scan_num
define_print_num
define_print_num_uns