.macro subtrai(%num1, %num2)
li $s0, %num1
li $s1, %num2
sub $s2, $s0, $s1
la $a0, ($s2)
li $v0, 1
syscall
.end_macro

.globl principal

principal:
subtrai(100, 30)
li $v0, 10
syscall
