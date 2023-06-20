.data 
	vetor: .space 12
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

inputInt("Digite um numero: ")
move $t0, $v0

beq $t0, 0, zero #igual

ble $t0, 0, negativo #menor igual

bne $t0, 0, positivo #maior igual


zero: 
	printf("o numero é zero")
	encerrar

negativo: 
	printf("o numero é negativo")
	encerrar

positivo: 
	printf("O numero é positivo")
	encerrar