; (Pong.inc)

include Irvine32.inc

DrawFrame proto,
     boardTopOffset: dword,
	boardLeftEdgeOffset: dword,
     boardWidth: dword,
	boardHeight: dword,
	borderWidth: dword,
	space: ptr byte

CheckMovement proto,
	p1coord: PTR dword,
	p2coord: PTR dword,
	controls: PTR byte,
	paddleHeight: PTR dword,
	roomUpperBorder: PTR dword,
	roomLowerBorder: PTR dword
 