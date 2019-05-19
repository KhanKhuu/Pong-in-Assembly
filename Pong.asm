; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Pong.inc

; game board and frame data
BOARD_TOP_OFFSET equ 5
BOARD_LEFT_EDGE_OFFSET equ 30
BOARD_WIDTH equ 50
BOARD_HEIGHT equ 25
BORDER_WIDTH equ 1

.data
welcome byte "hey", 0
gameSpeed dword 1h

; ball and paddle tracking
xCoordBall dword BOARD_LEFT_EDGE_OFFSET
yCoordBall dword BOARD_TOP_OFFSET + 2
xRun dword 1
yRise dword 1


space byte " ", 0

player1X dword 4h
player1Y dword 20h
player2X dword 40h
player2Y dword 20h

controls byte 'w', 's', 'o', 'l', 0			; player 1 up, player 1 down, player 2 up, player 2 down
paddleHeight dword 4

ballDirection dword 90				; in degrees? or slope? 

playerColor dword (lightBlue * 16)
ballColor dword (lightBlue * 16)
guiColor dword (blue * 16)

.code
main proc

     invoke DrawFrame, BOARD_TOP_OFFSET, BOARD_LEFT_EDGE_OFFSET, BOARD_WIDTH, BOARD_HEIGHT, BORDER_WIDTH, addr space
     mov edx, OFFSET welcome
     call WriteString

     mov ecx, 1
MainLoop:
	 ; Do stuff
	 ; call Clrscr
	 ; call MoveBall
	 ; call CheckMovement
	 ; call DrawScreen
	 ; Call CheckForPoint
       inc ecx ; increment ecx to keep the loop going...when the ball goes out of bounds, set ecx to 0 so the inner loop can finish
	 loop MainLoop
	 
	 
     exit
main endp
end main
