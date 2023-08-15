include 'emu8086.inc'
               
print "enter a number "
call scan_num          
mov ax,1

y:

cmp cx,0
je z
mul cx
dec cx
jmp y

z:
    printn
    call print_num
define_print_num
define_print_num_uns
define_scan_num
