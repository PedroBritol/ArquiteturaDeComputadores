.data
msg: .asciiz "Digite o primeiro numero: "
msg2: .asciiz "Digite o segundo numero: "
msg3: .asciiz "O resultado da multiplicação eh: "

.text




la $a0, msg
li $v0, 4
syscall

li $v0, 5
syscall

move $s1, $v0

la $a0, msg2
li $v0, 4
syscall

li $v0, 5
syscall

move $s2, $v0

mul $s3, $s1, $s2
syscall

la $a0, msg3
li $v0, 4
syscall

move $a0, $s3
li $v0, 1
syscall

li $v0, 10
syscall

