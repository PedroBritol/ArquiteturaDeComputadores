.text
li $s0 , 5
li $s1, 10
add $s3, $s0, $s1

la $a0 , ($s3)
li $v0, 1
syscall
li $v0, 10
syscall
