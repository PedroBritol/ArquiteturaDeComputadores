.data
msg1: .asciiz "Digite o seu nome: "
msg2: .asciiz "Seja bem-vindo: "
nome: .space 40


.text

la $a0, msg1
li $v0, 4
syscall

la $a1, 40
la $a0, nome
li $v0, 8
syscall

la $a0, msg2
li $v0, 4
syscall

la $a0, nome
li $v0, 4
syscall

li $v0, 10
syscall
