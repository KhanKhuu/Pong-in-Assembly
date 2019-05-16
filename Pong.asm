; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Irvine32.inc

.data
sampleString byte "Hello World", 0
GameSpeed dword 1h

GameWidth dword 50h
GameHeight dword 40h

Player1X dword 4h
Player1Y dword 20h
Player2X dword 40h
Player2Y dword 20h

Player1MoveUp byte "w", 0
Player1MoveDown byte "s", 0
Player2MoveUp byte "o", 0
Player2MoveDown byte "l", 0

BallDirection dword 90				; in degrees? or slope? 

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
