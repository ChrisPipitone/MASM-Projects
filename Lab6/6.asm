; Author: Chris Pipitone
; Program Name: Lab#6 String encryption program
; Program Description: Encrypts a user provided string with a key, displays important output
; Date

INCLUDE Irvine32.inc

.data
	prompt  BYTE  "Enter the  text: ", 0
	encrypt BYTE  "Encrypted text: ", 0
	decrypt BYTE  "Decrypted: ", 0

	MAXSIZE = 128
	message   BYTE  MAXSIZE + 1 DUP(0)
.code
main PROC
	mov edx, OFFSET prompt		;display prompt msg
	call WriteString

	mov ecx, MAXSIZE
	mov edx, OFFSET message
	call ReadString 

	call Crlf

	call WriteString


exit
main ENDP
END main