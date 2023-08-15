include 'emu8086.inc'
print "enter a number "
call scan_num
printn
     

mov ax,cx
mov bx,cx 
mov cx,0  
mov t4,ax

length:  
    cmp ax,0 
    je z
    mov dx,0
    div d
    inc cx
    jmp length
  
z:
    mov ax,bx
    mov t2,cx
    jmp x
x: 
    cmp ax,0
    je compare
    mov dx,0
    div d
    mov t,ax
    mov ax,1
    mov bx,dx
    y:  
        mul bx 
        loop y
    add sum,ax 
    mov cx,t2
    mov ax,t  
    jmp x

compare: 
    mov bx,t4
    cmp bx,sum
    je arm
    print " not armstrong" 
    ret
arm:
    print " armstrong "
    ret 
    
 
        
        
    
t4 dw 0 
d dw 10
c dw 0
t dw 0
t2 dw 0 
sum dw 0 
t3 dw 0
define_scan_num
define_print_num
define_print_num_uns