.data
matrix1: .space 400
matrix2: .space 400
matrix3: .space 400

str_enter: .asciiz "\n"
str_space: .asciiz " "

.macro getindex(%ans, %i, %j)
	sll %ans, %i, 3
	add %ans, %ans, %j
	sll %ans, %ans, 2
.end_macro 


.text
li  $v0,5
syscall                 # 输入一个整数，输入的数存到 $v0 中
move $s0, $v0           # 赋值，$s0 = $v0

li $t0,0

in_1_i:
beq $t0, $s0, in_1_i_end  # 这里用了一个扩展指令 bgt,当 $t0 > $s0 的时候跳转到 loop_end
li $t1, 0
in_1_j:
beq $t1, $s0, in_1_j_end
li $v0, 5
syscall
getindex($t2, $t0, $t1)
sw $v0, matrix1($t2)
addi $t1, $t1,1
j in_1_j
in_1_j_end:
addi $t0,$t0,1
j in_1_i
in_1_i_end:

li $t0, 0
   
in_2_i:
beq $t0, $s0, in_2_i_end  # 这里用了一个扩展指令 bgt,当 $t0 > $s0 的时候跳转到 loop_end
li $t1, 0
in_2_j:
beq $t1, $s0, in_2_j_end
li $v0, 5
syscall
getindex($t2, $t0, $t1)
sw $v0, matrix2($t2)
addi $t1, $t1,1
j in_2_j
in_2_j_end:
addi $t0,$t0,1
j in_2_i
in_2_i_end:

li $t0, 0
get_i:
beq $t0, $s0 , get_i_end
li $t1, 0
get_j:
beq $t1, $s0 , get_j_end
li $t2, 0
li $t3, 0
get_k:
beq $t2, $s0, get_k_end
getindex($t4,$t0,$t2)
getindex($t5,$t2,$t1)
lw $t4, matrix1($t4)
lw $t5, matrix2($t5)
mul $t4, $t4, $t5
add $t3 $t3 $t4
addi $t2,$t2,1
j  get_k
get_k_end:
getindex($t4,$t0,$t1)
sw $t3,matrix3($t4)
addi $t1,$t1,1
j get_j
get_j_end:
addi $t0,$t0,1
j get_i
get_i_end:

li  $t0, 0

out_i:
beq $t0, $s0, out_i_end
li  $t1, 0
out_j:
beq $t1, $s0, out_j_end
getindex($t2, $t0, $t1)
lw  $a0, matrix3($t2)            # $a0 = matrix[$t0][$t1]
li  $v0, 1
syscall
la  $a0, str_space
li  $v0, 4
syscall                         # 输出一个空格
addi $t1, $t1, 1
j   out_j
out_j_end:
la  $a0, str_enter
li  $v0, 4
syscall                         # 输出一个回车
addi $t0, $t0, 1
j   out_i
out_i_end:


li  $v0,10              # $v0 = 10
syscall                 # 结束程序

