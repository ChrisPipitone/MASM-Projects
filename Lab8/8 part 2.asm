; Author: Chris Pipitone
; Program Name : Lab8 Part 1
; Program Description : implements eax = (ebx * 20) / ecx; using multiplicaton and division instructions
; Date

INCLUDE Irvine32.inc

.data
	twenty BYTE 20
.code
main PROC
	mov ebx, 10
	mov ecx, 4

	mov eax, ebx

	mul twenty
	mov edx, 0		;clear dividend 
	div ecx

	call WriteInt
exit
main ENDP
END main