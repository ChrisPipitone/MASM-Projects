; Author: Chris Pipitone
; Program Name: Lab2
; Program Description: Implements  (Xval - Yval) - (Zval + 3 + Xval) - 10 - Zval
; Date

INCLUDE Irvine32.inc

.data
	Rval WORD ?
	x WORD 5
	y WORD 10
	z WORD 15

.code
main PROC
	mov eax, 0		;clear regs
	mov ebx, 0
	mov ecx, 0

	mov ax, x		;1st ()
	sub ax, y

	mov bx, z		;2nd()
	add bx, 3
	add bx, x

	sub ax, bx		;1() - 2nd()
	sub ax, 10		;result - 10
	sub ax, z		;result - x

	mov Rval, ax	;store result into Rval

	call DumpRegs
exit
main ENDP
END main