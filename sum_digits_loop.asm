include 'emu8086.inc'

print "enter a number   "

call scan_num
printn
mov ax,cx
mov bx,10

j:
    mov dx,0
    div bx           
    add sum,dx
    cmp ax,0
    je p
loop j  

p:      
    print "sum of its digits is " 
    mov ax,sum    
    printn
    call print_num


    
    
    
    
                
                
sum dw 0        
define_print_num
define_print_num_uns
define_scan_num