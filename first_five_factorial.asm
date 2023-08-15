include 'emu8086.inc'

;print "enter the num : "
;call scan_num
mov al,0
mov temp,al
mov si,0 
mov bx,5 

x:
    mov al,1 
    mov dl,temp
    mov cl,dl
    inc temp
    m:
        mul cl
        dec cl
        cmp cl,0
        je ins
        jmp m
    

    ins:
        mov ah,0
        mov arr[si],al
        inc si
        cmp si,bx
        je z
        cmp si,bx
        jne x 
        
z:   
    printn
    mov si,0
    jmp p
        
p: 
    mov al,arr[si]
    call print_num
    print " "
    inc si
    cmp si,bx
    je e
    cmp si,bx
    
    jne p
    
        
e:
    hlt

arr db ?,?,?,?,?,?,?,?,?,?,?
temp db 0
define_scan_num
define_print_num
define_print_num_uns