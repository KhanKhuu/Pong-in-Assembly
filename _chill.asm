; (_chill.asm)

include Pong.inc

.code 
Chill proc,
	duration: dword

	; duration - the length of time to chill in milliseconds

     pushad

	mov eax, duration
	call Delay

    popad
	ret
Chill endp
end