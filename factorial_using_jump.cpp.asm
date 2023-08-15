include 'emu8086.inc'
define_print_num
define_print_num_uns
define_scan_num

print " enter a number "
call scan_num
mov ax,1 
cmp cx,0
je Y

Y:
printn
print "1"
ret
x:
mul cx 
dec cx 
cmp cx,0
jne x  


printn
call print_num