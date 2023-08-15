include 'emu8086.inc'
mov si,0
print "emter array size "
printn
call scan_num
printn
mov bx,cx
print "enter array elements : "
printn

input:
      call scan_num
      printn
      mov arr[si],cl
      inc si
      cmp si,bx
      jne input
      mov si,0
               
print "perfect numbers in array : "
printn
x:     
    cmp si,bx
    je return
    mov al,arr[si]
    mov sum,0 
    mov cl,al
    dec cl
    y:  cmp cl,0
        je check
        mov al,arr[si]  
        mov ah,0
        div cl
        cmp ah,0
        je addd
        dec cl 
        jmp y
    check:
        mov al,arr[si]
        cmp sum,al
        je prnt
        inc si
        jmp x
addd:
    add sum,cl
    dec cl
    jmp y 
    
prnt:
    mov al,arr[si]
    call print_num
    printn  
    inc si
    jmp x
    
    
    
return:
    ret
       
sum db 0   
arr db ?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns