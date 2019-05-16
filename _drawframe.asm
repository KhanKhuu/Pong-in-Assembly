; (_drawframe.asm)

include Pong.inc

.code
DrawFrame proc,
	boardWidth: dword,
	boardHeight: dword,
	borderWidth: dword,
	space: ptr byte
	
	; boardWidth will hold the calculated width of the board
	; boardHeight will hold the calculated height of the board
	; borderWidth will hold the calculated width of the boarder lines
	; space is the offset of a space character to be printed to the screen to change the background color

	pushad
	mov borderWidth, 1

	; calculate the dimensions of the board according to the console's dimensions
     mov eax, 0
     mov edx, 0
	call GetMaxXY
	shl dx, 1
	cmp ax, dx
	jb WidthSmaller
HeightSmaller:
	mov boardWidth, eax
	shr ax, 1
	mov boardHeight, eax
	jmp Done
WidthSmaller:
	mov boardWidth, edx
	shr dx, 1
	mov boardHeight, edx
Done: 

	; now we draw the frame
	; first, the top border
	mov eax, white * 16
	call SetTextColor
	mov ecx, boardWidth
	mov edx, space
L1: call WriteString	
	loop L1
	
	; skip on down to the bottom
	mov eax, 0
	call SetTextColor
	mov ecx, boardHeight
L2:	call crlf
	loop L2
	
	; draw the bottom border
	mov eax, white * 16
	call SetTextColor
	mov ecx, boardWidth
L3: call WriteString
	loop L3
     mov eax, 0
     call SetTextColor
	call crlf
	
	; and done
	
	popad
	ret
DrawFrame endp
end
	
	