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

.macro inputInt(%str)
		printf(%str)
		li $v0, 5
		syscall
.end_macro

inputInt("digite um numero: ")
move $t0, $v0

li $t1, 0
addi $t0, $t0, 1

laco:
	bge $t1, $t0, L1
	
	move $a0, $t1
	li $v0, 1
	syscall
	printf(" ")
	
	addi $t1, $t1, 1
	j laco

L1: printf("\n acabou")
encerrar
