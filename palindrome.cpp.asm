include 'emu8086.inc' 
print "enter a number : "
call scan_num
printn

mov i,cx                       ;n1
print "enter another number " 
call scan_num
printn
 
mov bx,cx   ;n2

x:
    cmp i,bx 
    jg return
    mov cx,i
    mov c,0
    y:  
        cmp cx,0
        je z
        mov ax,i  
        mov dx,0
        div cx
        cmp dx,0
        je ink
        dec cx
        jmp y 
     z:
        mov ax,c
        cmp ax,2
        je p
        inc i
        jmp x
    
 
 
 
 p:
    mov ax,i
    printn
    call print_num
    inc i
    jmp x
 
ink:
    dec cx
    inc c
    jmp y
return:
    ret

i dw 0 
 
c dw 0
define_print_num
define_print_num_uns
define_scan_num
