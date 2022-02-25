; Author: Chris Pipitone
; Program Name: Lab#7
; Program Description: Locates the first nonzero value in the array. 
;     if none is found, esi points to the sentinal value
; Date

INCLUDE Irvine32.inc

.data
	array SWORD 0,0,0,0,5,0,0,8,0,0
	sentinel SWORD 0FFFFh
.code
main PROC
	mov esi, OFFSET array
	mov ecx, LENGTHOF array
	L1:
		cmp WORD PTR [esi],0	;check for zero
		pushfd					
		add esi, TYPE array
		popfd
		loope L1				;continue loop
		jz quit					;none found
		sub esi, TYPE array		;esi points to value
	quit:

	mov eax, [esi]
	call WriteInt
exit
main ENDP
END main