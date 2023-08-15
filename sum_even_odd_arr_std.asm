
;sum of even numbers and sum of odd numbers in array

include 'emu8086.inc'
mov si,0        
print "enter the array size "
printn
call scan_num
mov bx,cx
printn
print "enter the array elements : "
printn

input:
    call scan_num
    printn
    mov arr[si],cl
    inc si
    cmp si,bx
    jne input
    mov si,0 
    mov dl,2
x:       
    cmp si,bx
    je prnt
    mov al,arr[si]
    mov ah,0
    div dl
    cmp ah,0
    je even
    mov al,arr[si]
    add so,al
    inc si
    jmp x  
    
even:
    mov al,arr[si]
    add se,al
    inc si
    jmp x
    
prnt:
    print "sum of odd numbers in array are : " 
   
    mov al,so
    mov ah,0
    call print_num
    printn
    print "sum of even numbers in array are : "
    mov al,se
    mov ah,0
    call print_num
    printn
    ret
    
    
    
    

se db 0
so db 0
arr db ?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns