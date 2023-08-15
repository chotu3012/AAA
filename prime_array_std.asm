include 'emu8086.inc'
mov si,0
print " enter the array size " 
printn
call scan_num
;mov cx,2
mov bx,cx    
printn

print "enter array elements : "
printn
input:
    call scan_num
    printn
    ;mov cl,5
    mov arr[si],cl
    inc si
    cmp si,bx  
    jne input
    mov si,0
    print "prime number in the array :"
    printn
    
    

x: 
    mov al,arr[si]
    mov c,0
    mov cl,arr[si]
    y:
        cmp cl,0
        je check 
        mov al,arr[si]
        mov ah,0
        div cl
        cmp ah,0
        je ink
        dec cx
        jmp y
    check:
        mov cl,c
        cmp cl,2
        je print
        
        inc si
        cmp si,bx 
        jne x 
        ret
        
print:
      mov al,arr[si]
      call print_num
      printn 
      inc si
      cmp si,bx
      jne x
      ret
      
ink:
    inc c
    dec cx
    jmp y
        
c db 0   
arr db ?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns