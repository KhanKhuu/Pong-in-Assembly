; Title:       Pong 2.0
; Authors:     Josiah Turnquist, Matthew Larkins

include Pong.inc

; game board and frame data
BOARD_TOP_OFFSET equ 5d
BOARD_LEFT_EDGE_OFFSET equ 30d
BOARD_WIDTH equ 50d
BOARD_HEIGHT equ 25d
BORDER_WIDTH equ 1d



.data
welcome byte "hey", 0
gameSpeed dword 1h

; for passing into prototypes
roomUpperBorder dword (BOARD_TOP_OFFSET)
roomLowerBorder dword (BOARD_TOP_OFFSET + BOARD_HEIGHT)

; ball and paddle tracking
xCoordBall dword BOARD_LEFT_EDGE_OFFSET
yCoordBall dword BOARD_TOP_OFFSET + 2
xRun dword 1
yRise dword 1

; character
space byte " ", 0

player1X dword (BOARD_LEFT_EDGE_OFFSET)
player1Y dword (BOARD_TOP_OFFSET + (BOARD_HEIGHT / 2))
player2X dword (BOARD_LEFT_EDGE_OFFSET + BOARD_WIDTH - 1)
player2Y dword (BOARD_TOP_OFFSET + (BOARD_HEIGHT / 2))

paddleHeight dword 4h

ballDirection dword 90				; in degrees? or slope? 

playerColor dword (lightBlue * 16)
ballColor dword (lightBlue * 16)
guiColor dword (blue * 16)

.code
main proc
     mov eax, 0
     call SetTextColor
     invoke DrawFrame, BOARD_TOP_OFFSET, BOARD_LEFT_EDGE_OFFSET, BOARD_WIDTH, BOARD_HEIGHT, BORDER_WIDTH, addr space
     mov edx, OFFSET welcome
     call WriteString

                         ; draw initial pong paddle player 1
     pushad
     mov edx, 0
     mov dl, byte PTR [player1X]
     mov dh, byte PTR [player1Y]
     mov ecx, paddleHeight
initialDrawP1:
     call Gotoxy
     mov eax, blue * 16
     call SetTextColor

     push edx
     mov edx, OFFSET space
     call WriteString
     pop edx
     dec dh
     loop initialDrawP1

     mov eax, 0
     call SetTextColor
     popad

                         ; finish draw initial pong paddle player 1

                         ; draw initial pong paddle player 2
     pushad
     mov dl, byte PTR [player2X]
     mov dh, byte PTR [player2Y]
     mov ecx, paddleHeight
initialDrawP2:
     call Gotoxy
     mov eax, blue * 16
     call SetTextColor

     push edx
     mov edx, OFFSET space
     call WriteString
     pop edx
     dec dh
     loop initialDrawP2

     mov eax, 0
     call SetTextColor
     popad

                         ; finish draw initial pong paddle player 2

     mov ecx, 1
MainLoop:
     ; check for movement and redraw paddle accordingly
      invoke CheckMovement, addr player1x, addr player1Y, addr player2X, addr player2y, paddleHeight, roomUpperBorder, roomLowerBorder

      add ecx, 1 ; when the ball goes out of bounds, set ecx to -1 so the inner loop can finish
	 loop MainLoop
	 
	 
     exit
main endp
end main
