include 'emu8086.inc'
define_print_num
define_print_num_uns 
define_scan_num

print "enter a number "
call scan_num       
;print "factorial of " call print_num
mov ax,1

x:    
       
       cmp cx,0
       je k
   mul cx  
loop x    
printn

call print_num   
ret

k:            
printn
call print_num