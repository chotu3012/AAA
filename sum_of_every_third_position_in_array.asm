include 'emu8086.inc'
mov si,0
print "enter the array size :  "
call scan_num
printn
mov bx,cx      

print "enter the array elements : "
printn

input:
     call scan_num
     mov arr[si],cl
     printn
     inc si
     cmp si,bx
     jne input
 
mov si,2

x:       
    mov al,arr[si]
    add s,al
    inc si
    inc si
    inc si
    cmp si,bx
    jl x
 
print "sum of elements in every third position of array "
printn  
mov ah,0
mov al,s
call print_num
ret


s db 0
arr db ?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns