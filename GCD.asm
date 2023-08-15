include 'emu8086.inc' 

print "enter first number  "
printn
call scan_num    
printn
mov ax,cx
printn "enter second number "
printn
call scan_num
printn
mov bx,cx

cmp ax,bx 
jl L
mov i,bx
mov bx,ax
mov ax,i
jmp L        

L:
   mov temp1,ax
   mov temp2,bx
   mov i,ax
   jmp Y
 
Y:
    mov ax,temp1
    mov bx,temp2
    mov dx,0
    div i
    cmp dx,0
    je X
    dec i
    jmp Y
    
X:
    mov dx,0
    mov ax,bx
    div i
    cmp dx,0
    je Z  
    dec i
    jmp Y 
Z:
    mov ax,i
    printn
    call print_num
    ret
    

















temp1 dw 0
temp2 dw 0
i dw 0
define_print_num
define_print_num_uns
define_scan_num
