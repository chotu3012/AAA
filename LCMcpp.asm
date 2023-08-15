include 'emu8086.inc'
define_print_num
define_print_num_uns
define_scan_num
      
      
print "enter first number :  "       
call scan_num
mov ax,cx                  
printn
print "enter another number : "
call scan_num
printn
mov bx,cx
mov cx,1
mov temp,ax

j:      
    mov ax,temp
    mul cx
    mov temp2,ax
    mov dx,0
    div bx 
    
    cmp dx,0
    je k 
    add cx,1
    jmp j

k:
     mov ax,temp2     
     
     call print_num    
        ret
    
temp dw 0 
temp2 dw 0
    