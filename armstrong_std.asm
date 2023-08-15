include 'emu8086.inc'
mov si,0
print "enter array size : "
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
print "armstrong numbers in array are  : "
printn

x:   
    cmp si,bx
    je return
    mov al,arr[si]  
    mov dl,10
    mov l,0
    mov sum,0
    
    length:
        cmp al,0
        je y   
        mov ah,0
        div dl
        inc l
        jmp length
    y:  
        mov al,arr[si]
        mov dl,10
        mov cl,l
        
    z:
        cmp al,0
        je check
        mov ah,0
        div dl   
        mov t,al
        mov al,1
        mov dl,ah
        mov cl,l
        k:        
            mul dl
            loop k 
        add sum,al
        mov dl,10
        mov al,t
        jmp z
    check:
        mov al,arr[si]
        cmp al,sum
        je prnt
        inc si
        jmp x
    prnt:
       call print_num
        printn
        inc si
        jmp x
        
        
return:
    ret        
        
sum db 0
t db 0
l db 0
arr db ?,?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns