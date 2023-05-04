.data
	msg: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msg3: .asciiz "Digite o terceiro numero: "
.text

.macro encerrar
	li $v0, 10
	syscall
.end_macro

addi $s0, $zero, 10
addi $s1, $s0, 10
addi $s2, $s1, 20


la $a0, ($s2)
li $v0, 1
syscall

encerrar

