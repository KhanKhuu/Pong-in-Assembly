; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Irvine32.inc

.data
sampleString byte "Hello World", 0

.code
main proc
     mov edx, offset sampleString
     call WriteString
     call crlf
     exit
main endp
end main