.data
nums: .space 40
result: .space 40
str_enter: .asciiz " \n"
str_space: .asciiz " "

.macro getint(%des)
	li $v0,5
	syscall
	move %des,$v0
.end_macro

.macro printint(%des)
	move $a0,%des
	li $v0,1
	syscall
.end_macro

.macro getnums(%des,%src)
	sll %src,%src,2
	lw %des,nums(%src)
	srl %src,%src,2
.end_macro

.macro getresult(%des,%src)
	sll %src,%src,2
	lw %des,result(%src)
	srl %src,%src,2
.end_macro

.macro putnums(%des,%src)
	sll %src,%src,2
	sw %des,nums(%src)
	srl %src,%src,2
.end_macro

.macro putresult(%des,%src)
	sll %src,%src,2
	sw %des,result(%src)
	srl %src,%src,2
.end_macro

.macro end_syscall
	li $v0,10
	syscall
.end_macro

.text

mian:
	#输入n
	getint($s0)
	
	#输入数字
	li $t0,0
	loop:
		beq $t0,$s0,loop_end
		getint($t1)
		putnums($t1,$t0)
		addi $t0,$t0,1
		j loop
	loop_end:
	#输入m
	getint($s1)
	#算出k
	sub $s2,$s0,$s1
	#t7里放start
	li $t7,0
	#双重循环
	 	#第一重循环
	 	li $t0,0
	 	loop1:
	 		beq $t0,$s2,loop1_end
	 		#设置min为9，放在t6里
	 		li $t6,9
	 		#第二重循环
	 			move $t1,$t7
	 			addi $t5,$s1,1
	 			add $t5,$t5,$t0
	 			loop2:
	 			beq $t1,$t5,loop2_end
	 			#如果min大于nums【j】，更新min和start
	 				getnums($t2,$t1)
	 				sub $t3,$t6,$t2
	 				bgtz $t3 if
	 				else:
	 					j else_end
	 				if:
	 					move $t6,$t2
	 					addi $t7,$t1,1
	 				if_end:
	 				else_end:
	 				addi $t1,$t1,1
	 				j loop2
	 			loop2_end:	
	 		#二重循环结束
	 		#更新result
	 		putresult($t6,$t0)
	 		addi $t0,$t0,1
	 		j loop1
	 	#一重循环结束
	 	loop1_end:
	#输出result
	li $t0,0
	loop3:
		beq $t0,$s2,loop3_end
		getresult($t1,$t0)
		printint($t1)
		addi $t0,$t0,1
		j loop3
	loop3_end:
end_syscall
	
	
	
	
	