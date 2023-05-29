.data
	inicial: .byte 'P'
	numero: .word 80
	msg1: .asciiz "A incial é: "
	inicial2: .byte 
	numero2: .word

.text

.macro encerrar
	li $v0, 10
	syscall
.end_macro

lb $t0, numero
addi $s0, $t0, 32

la $a0, msg1
li $v0, 4
syscall

sb $s0, inicial2
lb $a0, inicial2
li $v0, 11
syscall 
 
sw $s3, inicial
lw $a0, numero2
li $v0, 1
syscall

encerrar
