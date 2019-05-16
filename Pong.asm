; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Irvine32.inc

.data
byte space " ", 0
row 



.code
main proc
     call DrawFrame, addr space
     exit
main endp
end main