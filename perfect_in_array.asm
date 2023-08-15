;perfect number in array




include 'emu8086.inc'
        
print "enter array size : "
printn
call scan_num 
mov size,cl
mov bx,cx

mov si,0  
printn
print " array elements : "
k:                
   printn
   call scan_num  
    mov arr[si],cl
    inc si
    cmp si,bx
    jne k    
    mov si,0 
printn
print " perfect numbers in array are : "
printn

m:   
    cmp si,bx
    je x
    mov cl,arr[si]  
    dec cl  
    mov sum,0
    
     

n:      
    cmp cl,0
    je o   
    mov al,arr[si]     
    mov ah,0
    div cl
    cmp ah,0
    je y     
    loop n 
    
    mov al,arr[si]   
   

o:         
     mov al,arr[si]   
     cmp sum,al
     je z 
     inc si 
     jmp m
    
    
z:
    mov al,sum     
    printn
    call print_num 
    printn 
    inc c
    inc si
    jmp m

y:
    add sum,cl
    dec cl
    jmp n
    
    
    
x: 
    cmp c,0 
    je j
    ret
    
j:
    print " there is no perfect number in array "
    printn
    
c db 0   
size db 0
sum db 0
arr db n dup(0)
define_print_num
define_print_num_uns
define_scan_num