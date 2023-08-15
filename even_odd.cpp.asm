include 'emu8086.inc'
define_print_num
define_print_num_uns
define_scan_num

print "enter a number"
call scan_num     
mov ax,cx
mov cx,2
div cx
cmp dx,0
je x
printn
print "odd"         
ret
x:   
printn
print "even"
