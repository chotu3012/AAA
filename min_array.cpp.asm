include 'emu8086.inc'
 
 
mov si,0 
print "enter array size "
printn 
call scan_num
mov bl,cl   
print " enter numbers "
printn
x:
    call scan_num
    printn
    mov arr[si],cl 
    inc si
    cmp si,bx
    jne x
mov si,0
mov cl,arr[si]
mov si,1


y:          

    cmp si,bx
    je k
    cmp cl,arr[si]
    jg z 
    inc si
    jmp y
    
z:
    mov cl,arr[si]
    inc si
    jmp y
    

k:      
    printn
    print " minimum number : "
    printn
    mov al,cl
    call print_num 
    ret




arr db ?
define_scan_num
define_print_num
define_print_num_uns