include 'emu8086.inc'

mov si,0
print "ENTER ARRAY SIZE "
printn
call scan_num

mov bx,cx
printn 
print "enter array elements "
printn

 x:
    call scan_num
    printn
   mov cx,cx
    mov arr[si],cx
    inc si
    cmp si,bx
    jne x
    mov si,0   
    mov cx,0
y:
    
    add cx,arr[si]
    inc si
    cmp si,bx
    je z
    jmp y
    
z:
    mov al,cl 
    div bx
    printn 
    print "average of the array "
    printn
    call print_num
    ret
    
    

arr dw ?
define_scan_num
define_print_num
define_print_num_uns