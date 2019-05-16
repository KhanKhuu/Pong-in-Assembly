; (_drawframe.asm)

include Pong.inc

DrawFrame proc,
	space: ptr byte
	
	; borderLength holds the number of units (1 unit = 2 spaces = 1 newline) of length that the frame's border will extend lenghtwise (along X)
	; borderHeight holds the number of units (1 unit = 2 spaces = 1 newline) of length that the frame's border will extend heightwise (along Y)
	; separation holds the number of units (1 unit = 2 spaces = 1 newline) that the top and bottom borders are separated by
	
	
	pushad
	
	call GetMaxXY
	mov eax, white * 16
	mov ecx, borderLength * 2
	mov edx, offset space
	
L1: call WriteString
	
	loop L1



    
	 
	
	; hunk
	
	
	
	popad
	
	
