.data
	idade: .word 0
	msg: .asciiz "Digite a idade: "
	msg2: .asciiz "A idade digitada é: "
	
.text

.macro encerrar
	li $v0, 10
	syscall
.end_macro

la $a0, msg
li $v0, 4
syscall

#recebe inteiro do teclado
li $v0, 5
syscall

#transfere o valor do registrador para a variavel
sw $v0, idade

la $a0, msg2
li $v0, 4
syscall

#transfere o valor da variavel para o registrador e imprime
lw $a0, idade
li $v0, 1
syscall

encerrar