.data
	nome: .byte "P"
	numero: .word 0

.text
iiz 
.macro encerrar
	li $v0, 10
	syscall
.end_macro

lb $t0, nome
sb $s0, 


encerrar