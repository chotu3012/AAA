include 'emu8086.inc'
mov si,0  
print "enter the array size : "
call scan_num
mov bl,cl    
printn
print "enter the array elements : "
printn

input:
    call scan_num
    mov arr[si],cl 
    add sum,cl
    inc si
    printn
    cmp si,bx
    jne input 
    mov al,sum    
    print "sum of srray elements : " 
    printn
    call print_num
    printn    
    
    print "average of the array elements : "
    printn
    mov al,sum   ;quotient =al and remainder=ah
    mov ah,0
    div bl
    call print_num
    ret
    

    
       

      
      


m db 0 
sum db 0
arr db ?,?,?
define_scan_num
define_print_num
define_print_num_uns