.data
msg: .asciiz " "

.text
.macro multiplica(%num1, %num2)
li $s0, %num1
li $s1, %num2
mul $s2, $s1, $s0

la $a0, ($s2)
li $v0, 1
syscall
.end_macro

.macro divi(%num1, %num2)
li $s0, %num1
li $s1, %num2
div $s0, $s1
mflo , $s2
mfhi, $s3

.end_macro

.globl principal

principal:
multiplica(10, 50)
la $a0, msg
li $v0, 4
syscall
divi(5, 2)
la $a0, ($s2)
li $v0, 1
syscall
la $a0, msg
li $v0, 4
syscall
la $a0, ($s3)
li $v0, 1
syscall


li $v0, 10
syscall