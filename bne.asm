
.text

.macro encerrar
	li $v0, 10
	syscall
.end_macro

.macro printf(%str)
	.data
		msg: .asciiz %str
	.text
	
	la $a0, msg
	li $v0, 4
	syscall
	
.end_macro

li $s0, 1
li $s1, 2

printf("Os numeros ")
beq $s0, $s1, L1
bne $s0, $s1, L2

L1 : printf("sao iguais")
encerrar

L2 : printf("não sao iguais")
encerrar
