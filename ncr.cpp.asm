include 'emu8086.inc'
print "enter a number "
printn 
call scan_num
mov ax,cx
printn
print "enter another number "
printn
call scan_num
mov bx,cx
mov num,ax
sub num,bx   

cmp bx,0
je a

cmp bx,ax
jg b
je a 

mov cx,ax    
mov ax,1

d:
    mul cx
    loop d
mov t1,ax

mov ax,1
mov cx,bx

f:
    mul cx
    loop f

mov t2,ax

mov ax,1
mov cx,num

g:
    mul cx
    loop g

mul t2
mov t2,ax

mov ax,t1
div t2    
printn
call print_num
ret 
 
a:
    printn
    print "1"
    ret
    
b:
    printn
    print "0"
    ret
      




t1 dw 0
t2 dw 0
t3 dw 0
num dw 0
define_scan_num
define_print_num
define_print_num_uns