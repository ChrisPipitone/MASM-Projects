; Author: Chris Pipitone
; Program Name: csc220 Lab5
; Program Description: Reverse string order using push and pop
; Date

INCLUDE Irvine32.inc

.data
	original BYTE "This is the Original String",0
	secondString BYTE LENGTHOF original Dup(0)
.code
main PROC
	mov edx, OFFSET original	
	call WriteString

	mov ecx, SIZEOF original
	sub ecx, 1							;remove count of the null character
	mov esi, 0
	
	L1:
		movzx eax, original[esi]
		push eax
		inc esi
	loop L1

	mov ecx, SIZEOF original
	sub ecx, 1							; remove count of the null character
	mov esi, 0
	L2:
		pop eax
		mov  secondString[esi], al
		inc esi
	loop L2

	call Crlf							;move cursor to next line 
	mov edx, OFFSET secondString
	call WriteString

exit
main ENDP
END main