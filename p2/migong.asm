.data
map: .space 256
str_enter: .asciiz "\n"
str_space: .asciiz " "
.macro getindex(%ans,%i,%j)
	move %ans,%i
	sll %ans,%ans,3
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro

.macro getint(%des)
	li $v0,5
	syscall
	move %des,$v0
.end_macro

.macro end_syscall
	li $v0,10
	syscall
.end_macro

.macro push(%des)
	addi $sp,$sp,-4
	sw %des,0($sp)
.end_macro

.macro pop(%des)
	lw %des ,0($sp)
	addi $sp,$sp,4
.end_macro

.macro printint(%des)
	move $a0,%des
	li $v0,1
	syscall
.end_macro

.text

main:
	#输入n到$s0
	getint($s0)
	#输入m到$s1
	getint($s1)
	#输入地图，两重循环
	li $t0 ,0
	in_i:
		beq $t0,$s0,end_in_i
		li $t1,0
		in_j:
			beq $t1,$s0,end_in_j
			getint($t2)
			getindex($t3,$t0,$t1)
			sw $t2,map($t3)
			addi $t1,$t1,1
			j in_j
		end_in_j:
		addi $t0,$t0,1
		j in_i
	end_in_i:
	#输入起点到$s2,$s3
	getint($s2)
	getint($s3)
	#输入终点到$s4,$s5
	getint($s4)
	getint($s5)
	#将起点存入$a0,$a1中
	move $a0,$s2
	move $a1,$s3
	#调用seek,返回结果存入$a0
	jal seek
	#输出返回结果
	printint($a0)
end_syscall

#seek函数：
seek:
	#将用到的临时变量$t0，$t1和$ra入栈
	push($ra)
	push($t0)
	push($t1)
	push($t4)
	#将起点$a0,$a1存入临时寄存器,$t0,$t1中
	move $t0,$a0
	move $t1,$a1
	#判断起点是否在地图范围内，否则返回0，是则继续
	sub $t2,$t0,$0 
	blez $t2,return_0_first#$t2大于零
	sub $t2,$s4,$t0
	bltz $t2,return_0_first#t2大于等于零
	sub $t2,$t1,$0
	blez $t2,return_0_first#t2大于零
	sub $t2,$s5,$t1
	bltz $t2,return_0_first#t2大于等于零
	j go_on_first
	return_0_first:
	#返回0
			#将0放入$a0中
			move $a0,$0
			#逆序出栈
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#返回到$ra
			jr $ra
			
	go_on_first:
	#判断起点是否为1，是则返回0，否则继续
	getindex($t2,$t0,$t1)
	lw $t2 map($t2)
	addi $t2,$t2,-1
	beq $t2,$0,return_0_second
	j go_on_second
	return_0_second:
	#返回0
			#将0放入$a0中
			move $a0,$0
			#逆序出栈
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#返回到$ra
			jr $ra
	go_on_second:
	#判断起点和终点是否重合，是则返回1，否则继续
	bne $t0,$s4,go_on_third
	bne $t1,$s5,go_on_third
	return_1:
		#返回1
			#将1放入$a0中
			li $a0,1
			#逆序出栈
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#返回到$ra
			jr $ra
	go_on_third:
	#将起点设置为1
	getindex($t2,$t0,$t1)
	li $t3,1
	sw $t3,map($t2)
	
	#进行递归调用：
			#将$t4设置为0
			li $t4,0
			#将向右走一步的起点放在 $a0,$a1中
			addi $t2,$t0,1
			addi $t3,$t1,0
			move $a0,$t2
			move $a1,$t3
			#使用jal调用seek，x+1，将返回结果放在$a0中
			jal seek
			#$t4加上$a0
			add $t4,$t4,$a0
			#将向下走一步的起点放在 $a0,$a1中
			addi $t2,$t0,0
			addi $t3,$t1,1
			move $a0,$t2
			move $a1,$t3
			#使用jal调用seek，x+1，将返回结果放在$a0中
			jal seek
			#$t4加上$a0
			add $t4,$t4,$a0
			#将向左走一步的起点放在 $a0,$a1中
			addi $t2,$t0,-1
			addi $t3,$t1,0
			move $a0,$t2
			move $a1,$t3
			#使用jal调用seek，x+1，将返回结果放在$a0中
			jal seek
			#$t4加上$a0
			add $t4,$t4,$a0
			#将向上走一步的起点放在 $a0,$a1中
			addi $t2,$t0,0
			addi $t3,$t1,-1
			move $a0,$t2
			move $a1,$t3
			#使用jal调用seek，x+1，将返回结果放在$a0中
			jal seek
			#$t4加上$a0
			add $t4,$t4,$a0
	#将map起点重新设置为0
	getindex($t2,$t0,$t1)
	li $t3,0
	sw $t3,map($t2)
	#将$t4结果放到$a0中
	move $a0,$t4
	#逆序出栈
	pop($t4)
	pop($t1)
	pop($t0)
	pop($ra)
	#返回到$ra
	jr $ra
seek_end:
	

 