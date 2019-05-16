; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Irvine32.inc

.data
GameSpeed dword 1h

GameWidth dword 50h
GameHeight dword 40h

LeftPlayerX dword 4h
LeftPlayerY dword 20h
RightPlayerX dword 40h
RightPlayerY dword 20h

PlayerColor dword (lightBlue * 16)
BallColor dword (lightBlue * 16)
GUIColor dword (blue * 16)

.code
main proc
     
MainLoop:
	 ; Do stuff
	 ; call Clrscr
	 ; call MoveBall
	 ; call CheckMovement
	 ; call DrawScreen
	 ; Call CheckForPoint
	 loop MainLoop
	 
	 
     exit
main endp
end main
