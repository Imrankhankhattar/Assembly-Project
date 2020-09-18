INCLUDE C:\\irvine\irvine32.inc
.data
msguser byte "Programme for ALPHA COMPUTER:-",0ah,0
msg1 byte "Enter the lenght of Square",0ah,0
msg2 byte "Enter the width of Square",0ah,0
msg3 byte "Area of square is:",0ah,0
gmsg byte "press 1 for  32 bit system :",0ah
     byte "press 2 for 16 bit system: ",0ah
     byte "press 4 for GIVING VALUES IN FLOAT: ",0ah
     byte "press 5 for EXIT",0ah,0
.code
main proc
mov edx,offset msguser
call writestring
call crlf
input1:
  mov edx,offset gmsg
  call writestring
  call readint
  cmp al,4
  je flt
  cmp al,1
  je ttbit
  cmp al,2
  je sbit
 ; cmp al,3
;  je sfbit
  cmp al,5
  je skip
  loop input1
  flt:
  call floatpoint
  jmp input1
  ttbit:
    call thirtytwo
    jmp input1
 sbit:
    call sixteen
    jmp input1
  skip:
   exit
 main endp


 thirtytwo proc
  mov edx,offset msg1
  call Writestring
  call crlf
  call readint
  mov ebx,eax
  mov edx,offset msg2
  call writestring
  call crlf
  call readint
  call showfpustack
  mul ebx
  mov edx,offset msg3
  call writestring
  call crlf
  call writeint
   call showfpustack
  call crlf
 ret
 thirtytwo endp


 sixteen proc
 mov edx,offset msg1
  call Writestring
  call crlf
  call readint
  movsx bx,al
  mov edx,offset msg2
  call writestring
  call crlf
  call readint
  mul bx
  mov edx,offset msg3
  call writestring
  call crlf
  call writeint
  call crlf
 ret
 sixteen endp


 floatpoint proc
 mov edx,offset msg1
  call Writestring
  call crlf
  call readfloat
  mov edx,offset msg2
  call writestring
  call crlf
  call readfloat
  fmul
  mov edx,offset msg3
  call writestring
  call crlf
  call writefloat
  call crlf
 ret
 floatpoint endp


    end main