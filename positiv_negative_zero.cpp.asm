include 'emu8086.inc'

call scan_num
mov ax,cx 
cmp ax,0
jg positive                        
jl negative
print "zero"
ret       
positive:
    printn
    print "POSITIVE"       
    ret
negative:   
    print "negative"     
    ret

 
 define_print_num
define_print_num_uns
define_scan_num