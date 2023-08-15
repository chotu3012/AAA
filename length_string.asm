  include 'emu8086.inc'
  mov si,0
  mov ax,0
  
  L:  
    cmp str[si],'$'
    je return
    inc ax
  
    inc si
    jmp L
  
  return: 
    call print_num
    
  
  
  str dw "rgukt$"
  define_print_num
  define_print_num_uns
  