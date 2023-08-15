include 'emu8086.inc'
      
print "enter a number "
printn         
call scan_num
printn
mov ax,cx
mov t,ax
mov cx,10
x:
    mov dx,0
    div cx
    inc c
    cmp ax,0
    jne x

mov ax,t
mov cx,c
mov cc,cx
mov cx,10

y:  
    cmp ax,0
    je j
    mov dx,0
    div cx
    mov t2,ax
    mov tt,dx
    mov ax,dx 
    mov cx,cc
    mov c,cx
    mov cx,10

    jmp z 
    
    
    

z:
    dec c
    cmp c,0
    je k 
    mov dx,tt
    mul dx 
    jmp z



k:
    add sum,ax
    mov ax,t2 
    jmp y
    
j:
    mov ax,t
    cmp sum,ax
    je a
    print "not armstrong "
    ret
    
a:
    print "armstrong"
    ret

tt dw 0
sum dw 0
t2 dw 0
t dw 0
c dw 0  
cc dw 0
define_print_num
define_print_num_uns
define_scan_num