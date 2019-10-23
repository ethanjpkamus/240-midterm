global manage

extern printf

extern getdata
extern showarray
extern reverse

segment .data

	welcome db "Welcome to the array management",10,0
	inputprompt db "Please enter data to be stored in your array. Press Cntl+D to terminate",10,0
	thanks db "Thanks. The array contains the following: ",10,0
	correct db "Is this correct? (y or n)",10,0

	stringformat db "%s"



segment .bss

	array resq 5

segment .text

manage:

	push	rbp
	mov    rbp, rsp

	push	rbx
	push   rcx
	push   rdx
	push   rsi
	push   rdi
	push   r8
	push   r9
	push   r10
	push   r11
	push   r12
	push   r13
	push   r14
	push   r15

;===== welcome statement =====

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, welcome
	call 		printf

beginning:
;===== ask user for input =====

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, welcome
	call		printf

;===== call getdata =====

	push qword 0
	mov		rax, 0
	mov		rdi, array
	mov 		rsi, 5
	call		getdata

	mov r15, rax		;stores the number of integers input by the user

;===== thank the user and tell them what they input =====

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, thanks
	call		printf

;===== call showarray =====

	mov		rax, 0
	mov		rdi, array
	mov		rsi, r15
	call		showarray

;===== ask user if this is correct =====

	mov qword	rax, 0
	mov		rdi, stringformat
	mov		rsi, correct
	call		printf

	mov 		rax, 0
	call		getchar
	cmp		rax, 110
	je		beginning	;if user input n, return to the beginning

;===== call reverse =====

	;mov 		rax, 0
	;mov		rdi, array
	;mov		rsi, r15

	pop 	r15
	pop	r14
	pop    r13
	pop    r12
	pop    r11
	pop    r10
	pop    r9
	pop    r8
	pop    rdi
	pop    rsi
	pop    rdx
	pop    rcx
	pop    rbx
	pop    rbp

	ret
