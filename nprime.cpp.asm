include 'emu8086.inc'

print "enter a number : "
call scan_num

mov ax,cx
printn
print "enter another number : "
call scan_num
mov bx,cx
mov i,ax 

k:
    cmp i,bx 
    jg x    
    mov cx,0
    mov ax,i 
    mov t2,ax
    mov j,1
    jmp y

y:    
    mov ax,t2
    cmp j,ax 
    jg z 
    mov dx,0 
    div j 
    cmp dx,0
    je s 
    add j,1
    jmp y
    
s:
    add cx,1
    add j,1   
    jmp y
z:
    cmp cx,2
    je p
    add i,1
    jmp k
p:
    printn
    call print_num
    ;mov t3,ax  
    add i,1
    jmp k
    
    
x:
    ret
    
    
    
t2 dw 0
j dw 1
t dw 0      
i dw 0
define_print_num
define_print_num_uns
define_scan_num