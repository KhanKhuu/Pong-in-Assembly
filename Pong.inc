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
 
 UpdateBall proto,
    xCoordBall: ptr dword,
    yCoordBall: ptr dword,
    xRun: ptr dword,
	yRise: ptr dword,
	space: ptr byte,
	boardTopOffset: dword,
	boardHeight: dword
 
Chill proto,
     duration: dword
