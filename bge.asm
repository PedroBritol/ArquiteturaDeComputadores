
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

.macro input
	printf("digite um numero: ")
	li $v0, 5
	syscall
	
.end_macro

input
move $t0, $v0

input 
move $t1, $v0

bge $t0, $t1, L1

printf("o segundo é maior ou igual")
encerrar

L1 : printf("primeiro é maior ou igual")

encerrar

