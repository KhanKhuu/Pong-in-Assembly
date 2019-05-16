; (Pong.inc)

include Irvine.inc

DrawFrame proto

CheckMovement proto,
	p1coord: PTR dword,
	p2coord: PTR dword,
	controls: ADDR byte,
	paddleHeight: PTR dword,
	roomUpperBorder: PTR dword,
	roomLowerBorder: PTR dword
