include 'emu8086.inc'

mov si,0 
mov bx,4

x:
    call scan_num 
    printn
    mov arr[si],cl
    inc si
    cmp si,bx
    jne x
    
mov si,0
y:
    mov al,arr[si]
    printn
    call print_num
    inc si
    cmp si,bx
    jne y
ret

    
    
    




arr db ?   
define_scan_num
define_print_num
define_print_num_uns 

