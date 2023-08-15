include 'emu8086.inc'
mov ax,1
mov bx,0  
print "enter number of febnacci terms do you want "
printn
call scan_num
printn

cmp cx,0
je X
print "0"
dec cx




j:   
     cmp cx,0
     je X
     call print_num 
     mov temp1,ax
     add ax,bx
     mov bx,temp1
     dec cx   
     jmp j
X:
    ret;
    
temp1 dw 0
temp2 dw 0  
temp3 dw 0
define_print_num
define_print_num_uns
define_scan_num