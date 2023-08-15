include 'emu8086.inc'
mov si,0
mov cx,0 
mov bp,0
x:
   cmp str[si],'$'
   je k
   inc si
   inc bp
   jmp x 
   
k: 
   mov si,0
   dec bp 
  
y:
    cmp si,bp
    jge yes
    mov al,str[si]
    cmp al,str[bp]
    jne no
    inc si
    dec bp
    jmp y
yes:
    print "palindrome "
    ret
no:
    print "not palindrome"
    ret

str db "raju$"
define_scan_num
define_print_num
define_print_num_uns