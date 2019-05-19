; (_DrawScore.asm)

include Pong.inc

.code 
DrawScore proc,
     textcolor: dword,
     color: dword,
	boardTopOffset: dword,
	boardLeftEdgeOffset: dword,
     boardWidth: dword,
	boardHeight: dword,
	borderWidth: dword,
	space: ptr byte,
     p1score: ptr dword,
     p2score: ptr dword,
     p1string: ptr dword,
     p2string: ptr dword
	
	; boardTopOffset - distance from the top edge of the console to the top edge of the game board
     ; boardLeftEdgeOffset - distance from the left edge of the console to the left edge of the game board
	; boardWidth - width of the board
	; boardHeight - the height of the board
	; borderWidth - the width of the boarder lines
     ; space - the offset of a fill character
     
     pushad
     ; ---------------------- set color
     mov eax,  color
	call SetTextColor


     popad
     ret
DrawScore endp
end
