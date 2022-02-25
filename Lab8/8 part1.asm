; Author: Chris Pipitone
; Program Name: Lab8 Part 1
; Program Description : implements eax = (ebx * 20) / ecx ; using shift instructions for multiplicaton and division
; Date

INCLUDE Irvine32.inc

.data

.code
main PROC
	mov ebx, 10
	shl ebx, 4		;ebx * 16
	mov edx, 10
	shl edx, 2		;ebx * 4
	add ebx, edx	;ebx * 20
	;() done

	mov ecx, 4		;ecx = 4
	shr ebx, 2		;div by 4
	
	mov eax, ebx	;store result into eax

	call WriteInt
exit
main ENDP
END main