include 'emu8086.inc'
mov si,0
mov bx,4 
add bx, bx


x:
   call scan_num 
   printn
    mov arr[si],cx
    
    add si,2
    cmp si,bx
    jne x
    
    mov si,0
    
y:     
    
    mov ax,arr[si]
    ;mov ah,0
    printn
   call print_num  
   
    add si,2
    cmp si,bx
    jne y
    ret



arr dw ?,?
define_scan_num
define_print_num
define_print_num_uns
