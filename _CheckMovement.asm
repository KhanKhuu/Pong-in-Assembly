; (_CheckMovement.asm)

include Pong.inc

.code 
CheckMovement proc,
	p1coord: PTR dword,						; y-coord
	p2coord: PTR dword,						; y-coord
	controls: PTR byte,					; array for controls
	paddleHeight: PTR dword,
	roomUpperBorder: PTR dword,
	roomLowerBorder: PTR dword
	; duration is the length of time to chill in milliseconds
    pushad
	
CheckUpKeyP1:
	mov eax, p1coord
	sub eax, paddleHeight					; check with top of paddle rather than bottom.
	cmp eax, roomUpperBorder
	jae CheckDownKeyP1
	; check for button-pressed -- skip if player1 is above or equal to room's upper border
	call ReadKey
	cmp al, byte PTR [controls]		; first element of controls' array
CheckDownKeyP1:
	mov eax, p1coord
	sub eax, 0								; collision-checking is with bottom of paddle
	cmp eax, roomLowerBorder
	jbe CheckUpKeyP2
	; check for button-pressed -- skip if player1 is below or equal to room's lower border
	call ReadKey
	cmp al, byte PTR [controls + 1]	; second element of controls' array
CheckUpKeyP2:
	mov eax, p2coord
	sub eax, paddleHeight					; check with top of paddle rather than bottom.
	cmp eax, roomUpperBorder
	jae CheckDownKeyP2
	; check for button-pressed -- skip if player1 is above or equal to room's upper border
	call ReadKey
	cmp al, byte PTR [controls + 3]		; third element of controls' array
CheckDownKeyP2:
	mov eax, p1coord
	sub eax, 0								; collision-checking is with bottom of paddle
	cmp eax, roomLowerBorder
	jbe endit
	; check for button-pressed -- skip if player1 is below or equal to room's lower border
	call ReadKey
	cmp al, byte PTR [controls + 4]	; fourth element of controls' array	
endit:
	popad
	
	ret
CheckMovement endp
end
