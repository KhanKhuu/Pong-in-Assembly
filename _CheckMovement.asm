; (_CheckMovement.asm)

include Pong.inc

.code 
CheckMovement proc,
	p1coord: PTR dword,
	p2coord: PTR dword,
	roomUpperBorder: PTR dword,
	roomLowerBorder: PTR dword
	; duration is the length of time to chill in milliseconds
    pushad
	
	call ReadKey
	cmp al, Player1MoveUp
	
	
	
    popad
	ret
CheckMovement endp
end
