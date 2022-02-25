; Author: Chris Pipitone
; Program Name: csc220 Lab4
; Program Description: Reverse string order without push or pop
; Date

INCLUDE Irvine32.inc

.data
	original BYTE "This is the Original String",0
	secondString BYTE SIZEOF original Dup(0)
.code
main PROC
	mov edx, OFFSET original	
	call WriteString

	mov esi, 0
	mov ecx, SIZEOF original 
	sub ecx, 2						;end of orignal is 2 \0

	L1:
		mov al, original[ecx]
		mov secondString[esi], al
		inc esi
	loop L1

	mov al, original[0]				;ecx ends loop at 0 doesnt store oringal[0]
	mov secondString[esi], al		;store orignal[0] to secondstring

	call Crlf
	mov edx, OFFSET secondString
	call WriteString

exit
main ENDP
END main