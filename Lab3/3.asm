; Author: Chris Pipitone
; Program Name: csc220 Lab#3 
; Program Description : Copying a string using offset
; Date 5/5/2020

INCLUDE Irvine32.inc

.data
	source BYTE "This is the source line",0
	target BYTE sizeof source Dup(0),0
.code
main PROC
	mov esi,0
	mov eax, OFFSET target
	sub eax, OFFSET source
	mov ecx, eax

	L1:
		mov al, source[esi]
		mov target[esi], al
		inc esi
	loop L1
	mov edx, OFFSET target
	call WriteString
exit
main ENDP
END main