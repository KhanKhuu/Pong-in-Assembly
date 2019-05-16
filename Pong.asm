; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Irvine32.inc

.data
sampleString byte "Hello World", 0
GameSpeed dword 1h

GameWidth dword 50h
GameHeight dword 40h

LeftPlayerX dword 4h
LeftPlayerY dword 20h
RightPlayerX dword 40h
RightPlayerY dword 20h

PlayerColor dword (?)
BallColor dword (?)
GUIColor dword(?)

.code
main proc
     mov edx, offset sampleString
     call WriteString
     call crlf
     exit
main endp
end main
