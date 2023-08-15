include 'emu8086.inc'

print " emter array size : " 
printn
call scan_num
printn
mov size,cl         
mov bx,cx
mov si,0

print "enter array elements : "
printn
input:
        call scan_num
        printn 
        mov arr[si],cl
        inc si
        cmp si,bx 
        jne input
  
mov si,0   

print "prime numbers in array are : "
printn

k:             

        cmp si,bx 
        je return 
        mov c,0
        mov cl,arr[si]
        
        
l:
        mov al,arr[si]
        mov ah,0
        div cl
        cmp ah,0
        je count
        loop l 
        jmp m
        
        
        
        
count:
        inc c
        loop l 
    
m:        
        
        cmp c,2
        je p  
        inc si
        jmp k
        
p:
        mov al,arr[si]
       printn  
       mov f,1
        call print_num
       inc si
        jmp k
           
    
    
return:  
    cmp f,0
    je np
    ret 
    
np:
     print "there is no prime numbers in array :"
     printn
     ret

f db 0       
size db 0 
c db 0
arr db size dup(0)
define_print_num
define_print_num_uns
define_scan_num