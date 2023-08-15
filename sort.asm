include 'emu8086.inc'

mov si,0
mov bx,5  
mov di,0
x:  
    mov si,0
    cmp di,bx
    je z
f:
    mov al,arr[si]
    mov temp,al
    inc si
    cmp si,bx
    je incre 
    m:  
        mov al,temp
        cmp al,arr[si]
        jg swap
        cmp al,arr[si]
        jl f
        
        
    swap:
        mov cl,arr[si]
        dec si
        mov arr[si],cl
        inc si
        mov arr[si],al
        jmp f
    

incre:
    inc di
    jmp x
 
z:
    mov si,0
    jmp en
       
en:
    mov al,arr[si]
    call print_num
    print " "
    inc si
    cmp si,bx
    je h
    cmp si,bx
    jne en

h:
    hlt  
    
    
temp db 0  
arr db 5,4,3,2,1


define_scan_num
define_print_num
define_print_num_uns