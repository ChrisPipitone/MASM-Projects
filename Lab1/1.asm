; Author: Chris Pipitone
; Program Name : Lab1
; Program Description : uses alg on pg 126 that doesn't use OFFSET, TYPE and/or LOOP
; Date

; 1. Assign the array’s address to a register that will serve as an indexed operand.
; 2. Initialize the loop counter to the length of the array.
; 3. Assign zero to the register that accumulates the sum.
; 4. Create a label to mark the beginning of the loop.
; 5. In the loop body, add a single array element to the sum.
; 6. Point to the next array element.
; 7.Use a LOOP instruction to repeat the loop.


INCLUDE Irvine32.inc

.data
	intarray DWORD 10000h, 20000h, 30000h, 40000h
.code
main PROC
	mov esi, 0		;step 1
	mov ecx, 4		;step 2
	mov eax, 0		;step 3

	add eax, intarray[esi]		;would be loop
	sub ecx, 1
	add esi, 4

	add eax, intarray[esi]
	sub ecx, 1
	add esi, 4

	add eax, intarray[esi]
	sub ecx, 1
	add esi, 4

	add eax, intarray[esi]
	sub ecx, 1
	add esi, 4

	call WriteHex

exit
main ENDP
END main