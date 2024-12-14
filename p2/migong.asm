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
	#����n��$s0
	getint($s0)
	#����m��$s1
	getint($s1)
	#�����ͼ������ѭ��
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
	#������㵽$s2,$s3
	getint($s2)
	getint($s3)
	#�����յ㵽$s4,$s5
	getint($s4)
	getint($s5)
	#��������$a0,$a1��
	move $a0,$s2
	move $a1,$s3
	#����seek,���ؽ������$a0
	jal seek
	#������ؽ��
	printint($a0)
end_syscall

#seek������
seek:
	#���õ�����ʱ����$t0��$t1��$ra��ջ
	push($ra)
	push($t0)
	push($t1)
	push($t4)
	#�����$a0,$a1������ʱ�Ĵ���,$t0,$t1��
	move $t0,$a0
	move $t1,$a1
	#�ж�����Ƿ��ڵ�ͼ��Χ�ڣ����򷵻�0���������
	sub $t2,$t0,$0 
	blez $t2,return_0_first#$t2������
	sub $t2,$s4,$t0
	bltz $t2,return_0_first#t2���ڵ�����
	sub $t2,$t1,$0
	blez $t2,return_0_first#t2������
	sub $t2,$s5,$t1
	bltz $t2,return_0_first#t2���ڵ�����
	j go_on_first
	return_0_first:
	#����0
			#��0����$a0��
			move $a0,$0
			#�����ջ
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#���ص�$ra
			jr $ra
			
	go_on_first:
	#�ж�����Ƿ�Ϊ1�����򷵻�0���������
	getindex($t2,$t0,$t1)
	lw $t2 map($t2)
	addi $t2,$t2,-1
	beq $t2,$0,return_0_second
	j go_on_second
	return_0_second:
	#����0
			#��0����$a0��
			move $a0,$0
			#�����ջ
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#���ص�$ra
			jr $ra
	go_on_second:
	#�ж������յ��Ƿ��غϣ����򷵻�1���������
	bne $t0,$s4,go_on_third
	bne $t1,$s5,go_on_third
	return_1:
		#����1
			#��1����$a0��
			li $a0,1
			#�����ջ
			pop($t4)
			pop($t1)
			pop($t0)
			pop($ra)
			#���ص�$ra
			jr $ra
	go_on_third:
	#���������Ϊ1
	getindex($t2,$t0,$t1)
	li $t3,1
	sw $t3,map($t2)
	
	#���еݹ���ã�
			#��$t4����Ϊ0
			li $t4,0
			#��������һ���������� $a0,$a1��
			addi $t2,$t0,1
			addi $t3,$t1,0
			move $a0,$t2
			move $a1,$t3
			#ʹ��jal����seek��x+1�������ؽ������$a0��
			jal seek
			#$t4����$a0
			add $t4,$t4,$a0
			#��������һ���������� $a0,$a1��
			addi $t2,$t0,0
			addi $t3,$t1,1
			move $a0,$t2
			move $a1,$t3
			#ʹ��jal����seek��x+1�������ؽ������$a0��
			jal seek
			#$t4����$a0
			add $t4,$t4,$a0
			#��������һ���������� $a0,$a1��
			addi $t2,$t0,-1
			addi $t3,$t1,0
			move $a0,$t2
			move $a1,$t3
			#ʹ��jal����seek��x+1�������ؽ������$a0��
			jal seek
			#$t4����$a0
			add $t4,$t4,$a0
			#��������һ���������� $a0,$a1��
			addi $t2,$t0,0
			addi $t3,$t1,-1
			move $a0,$t2
			move $a1,$t3
			#ʹ��jal����seek��x+1�������ؽ������$a0��
			jal seek
			#$t4����$a0
			add $t4,$t4,$a0
	#��map�����������Ϊ0
	getindex($t2,$t0,$t1)
	li $t3,0
	sw $t3,map($t2)
	#��$t4����ŵ�$a0��
	move $a0,$t4
	#�����ջ
	pop($t4)
	pop($t1)
	pop($t0)
	pop($ra)
	#���ص�$ra
	jr $ra
seek_end:
	

 