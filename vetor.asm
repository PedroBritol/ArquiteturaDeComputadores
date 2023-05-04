.data
	vetor: .space 12
	pulaLinha: .asciiz "\n" 
.text

.macro encerrar
	li $v0, 10
	syscall
.end_macro

li $s0, 5
li $s1, 10
li $s2, 15
li $t0, 0

sw $s0, vetor($t0)
addi $t0, $t0, 4
sw $s1, vetor($t0)
addi $t0, $t0, 4
sw $s2, vetor($t0)

li $t0, 0
lw $a0, vetor($t0)
li $v0, 1
syscall

la $a0, pulaLinha
li $v0, 4
syscall

addi $t0, $t0, 4
lw $a0, vetor($t0)
li $v0, 1
syscall



encerrar