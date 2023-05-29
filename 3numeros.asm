
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

.macro input(%str)
	.data
		msg: .asciiz %str
	.text
		printf(%str)
		li $v0, 5
		syscall
.end_macro

input("digite o primeiro numero: ")
move $t0, $v0

input("digite o segundo numero: ") 
move $t1, $v0

input("digite o terceiro numero: ")
move $t2, $v0

beq $t0, $t1, L1
printf("O primeiro e o segundo sao diferentes")
encerrar

L1 : beq $t1, $t2, L2
printf("O segundo e terceiro sao diferentes")
encerrar

L2 : beq $t0, $t2, L3
encerrar

L3 : printf("Todos os numeros sao iguais")
encerrar 


encerrar

