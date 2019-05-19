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
	p1coordx: PTR dword,						; x-coord
	p1coordy: PTR dword,						; y-coord
	p2coordx: PTR dword,						; x-coord
	p2coordy: PTR dword,						; y-coord
	paddleHeight: dword,
	roomUpperBorder: dword,
	roomLowerBorder: dword
 
 UpdateBall proto,
    xCoordBall: ptr dword,
    yCoordBall: ptr dword,
    xRun: ptr dword,
	yRise: ptr dword,
	space: ptr byte,
	boardTopOffset: dword,
	boardHeight: dword,
    leftPaddleX: dword,
    leftPaddleY: dword,
    rightPaddleX: dword,
    rightPaddleY: dword,
	paddleHeight: dword
 
Chill proto,
     duration: dword
