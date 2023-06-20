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

li $s0, 1
li $s1, 3
li $s2, 9

li $t0, 0

sw $s0, vetor($t0)
addi $t0, $t0, 4

sw $s1, vetor($t0)
addi $t0, $t0, 4

sw $s2, vetor($t0)
li $t0, 0


loop:
	beq $t0, 12 , fim

	lw $a0, vetor($t0)
	li $v0, 1
	syscall
	printf(" ")
	
	addi $t0, $t0, 4
	j loop

fim:
	encerrar
	
	


