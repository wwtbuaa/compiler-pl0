main:
addi $gp $sp 0
addi $sp $sp -40
addi $fp $sp 0
addi $sp $sp -0
j label0
label1:
j label2
label3:
lw $t0 0($s0)
addi $s0 $s0 4
sw $t0 4($sp)
j label4
label4:
lw $t1 4($sp)
addi $t0 $t1 0
sw $t0 -4($gp)
addi $t1 $0 0
addi $t0 $t1 3
sw $t0 -8($gp)
lw $t1 -4($gp)
lw $t2 -8($gp)
sub $t0 $t1 $t2
sw $t0 -8($gp)
lw $t0 -8($gp)
bgez $t0 label5
lw $t1 4($sp)
addi $t0 $t1 0
sw $t0 -12($gp)
lw $t1 -12($gp)
addi $t0 $t1 0
addi $s1 $sp 0
sw $t0 0($s1)
j label6
label5:
lw $t1 4($sp)
addi $t0 $t1 0
sw $t0 -16($gp)
lw $t1 4($sp)
addi $t0 $t1 0
sw $t0 -20($gp)
addi $t1 $0 0
addi $t0 $t1 1
sw $t0 -24($gp)
lw $t1 -20($gp)
lw $t2 -24($gp)
sub $t0 $t1 $t2
sw $t0 -24($gp)
lw $t0 -4($gp)
sw $t0 -4($sp)
lw $t0 -8($gp)
sw $t0 -8($sp)
lw $t0 -12($gp)
sw $t0 -12($sp)
lw $t0 -16($gp)
sw $t0 -16($sp)
lw $t0 -20($gp)
sw $t0 -20($sp)
lw $t0 -24($gp)
sw $t0 -24($sp)
lw $t0 -28($gp)
sw $t0 -28($sp)
lw $t0 -32($gp)
sw $t0 -32($sp)
lw $t0 -36($gp)
sw $t0 -36($sp)
lw $t0 -40($gp)
sw $t0 -40($sp)
lw $t0 -44($fp)
sw $t0 -44($sp)
lw $t0 -48($fp)
sw $t0 -48($sp)
sw $sp -52($sp)
sw $ra -56($sp)
sw $gp -60($sp)
sw $fp -64($sp)
addi $gp $sp 0
addi $sp $sp -40
addi $fp $sp 0
addi $sp $sp -32
addi $s0 $sp 0
lw $t0 -24($gp)
addi $s0 $s0 -4
sw $t0 0($s0)
jal label3
addi $ra $s2 0
sw $v0 -28($gp)
lw $t1 -16($gp)
lw $t2 -28($gp)
mul $t0 $t1 $t2
sw $t0 -28($gp)
lw $t1 -28($gp)
addi $t0 $t1 0
addi $s1 $sp 0
sw $t0 0($s1)
label6:
lw $t1 0($sp)
addi $t0 $t1 0
sw $t0 -32($gp)
lw $v0 -32($gp)
lw $t0 -4($gp)
sw $t0 36($fp)
lw $t0 -8($gp)
sw $t0 32($fp)
lw $t0 -12($gp)
sw $t0 28($fp)
lw $t0 -16($gp)
sw $t0 24($fp)
lw $t0 -20($gp)
sw $t0 20($fp)
lw $t0 -24($gp)
sw $t0 16($fp)
lw $t0 -28($gp)
sw $t0 12($fp)
lw $t0 -32($gp)
sw $t0 8($fp)
lw $t0 -36($gp)
sw $t0 4($fp)
lw $t0 -40($gp)
sw $t0 0($fp)
lw $sp -12($fp)
lw $s2 -16($fp)
lw $gp -20($fp)
lw $fp -24($fp)
jr $ra
label2:
addi $t1 $0 0
addi $t0 $t1 5
sw $t0 -36($gp)
lw $t0 -4($gp)
sw $t0 -4($sp)
lw $t0 -8($gp)
sw $t0 -8($sp)
lw $t0 -12($gp)
sw $t0 -12($sp)
lw $t0 -16($gp)
sw $t0 -16($sp)
lw $t0 -20($gp)
sw $t0 -20($sp)
lw $t0 -24($gp)
sw $t0 -24($sp)
lw $t0 -28($gp)
sw $t0 -28($sp)
lw $t0 -32($gp)
sw $t0 -32($sp)
lw $t0 -36($gp)
sw $t0 -36($sp)
lw $t0 -40($gp)
sw $t0 -40($sp)
lw $t0 -44($fp)
sw $t0 -44($sp)
sw $sp -48($sp)
sw $sp -52($sp)
sw $ra -56($sp)
sw $gp -60($sp)
sw $fp -64($sp)
addi $gp $sp 0
addi $sp $sp -40
addi $fp $sp 0
addi $sp $sp -32
addi $s0 $sp 0
lw $t0 -36($gp)
addi $s0 $s0 -4
sw $t0 0($s0)
jal label3
addi $ra $s2 0
sw $v0 -40($gp)
addi $v0 $0 1
lw $a0 -40($gp)
syscall
lw $t0 -4($gp)
sw $t0 36($fp)
lw $t0 -8($gp)
sw $t0 32($fp)
lw $t0 -12($gp)
sw $t0 28($fp)
lw $t0 -16($gp)
sw $t0 24($fp)
lw $t0 -20($gp)
sw $t0 20($fp)
lw $t0 -24($gp)
sw $t0 16($fp)
lw $t0 -28($gp)
sw $t0 12($fp)
lw $t0 -32($gp)
sw $t0 8($fp)
lw $t0 -36($gp)
sw $t0 4($fp)
lw $t0 -40($gp)
sw $t0 0($fp)
lw $sp -8($fp)
lw $s2 -12($fp)
lw $gp -16($fp)
lw $fp -20($fp)
jr $ra
label0:
lw $t0 -4($gp)
sw $t0 -4($sp)
lw $t0 -8($gp)
sw $t0 -8($sp)
lw $t0 -12($gp)
sw $t0 -12($sp)
lw $t0 -16($gp)
sw $t0 -16($sp)
lw $t0 -20($gp)
sw $t0 -20($sp)
lw $t0 -24($gp)
sw $t0 -24($sp)
lw $t0 -28($gp)
sw $t0 -28($sp)
lw $t0 -32($gp)
sw $t0 -32($sp)
lw $t0 -36($gp)
sw $t0 -36($sp)
lw $t0 -40($gp)
sw $t0 -40($sp)
sw $sp -44($sp)
sw $sp -48($sp)
sw $ra -52($sp)
sw $gp -56($sp)
sw $fp -60($sp)
addi $gp $sp 0
addi $sp $sp -40
addi $fp $sp 0
addi $sp $sp -24
addi $s0 $sp 0
jal label1
addi $ra $s2 0
jr $ra
