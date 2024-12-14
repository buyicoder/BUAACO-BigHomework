.data
symbol: .space 28
array: .space 28
str_spa: .asciiz " "
str_ent: .asciiz "\n"
.text
li $v0, 5
syscall
add $s0, $v0, $zero # Read number n
add $a0, $zero, $zero # parameter for subfunc, 0
jal FullArray
li $v0, 10
syscall
#################### End of main func #####################3
FullArray:
	move $t0, $a0
	bge $t0, $s0, If_1   # t0: index, $s0: n
	move $t1, $zero      # t1: ѭ������ i ,set to 0
	Loop_2:
		la $t2, symbol
		sll $t5, $t1, 2
		add $t2, $t2, $t5 #symbol[i] new addr
		bge $t1, $s0, Return # for(i=0;i<n;i++)
		If_2:
			lw $t3, 0($t2) # ��ȡ symbol[i], t3ÿ����ʱ��ȡ���ɲ�����
			bnez $t3, End_if_2 #if(symbol[i])!=0 jump to endif
			la $t4, array    #t4��ÿ�ε���ʱ��ʱ���ɣ����Բ�����
			sll $t5, $t0, 2  #t5����ʱ���������Բ�����
			add $t4, $t4, $t5 # array[index]����ʵ��ַ
			addi $t5, $t1, 1
			sw $t5, 0($t4) #array[index] = i + 1
			li $t5, 1
			sw $t5, 0($t2) #symbol[i] = 1
			########### ׼������ݹ� ############
			sw $ra, 0($sp) # ԭ����λ��ѹջ
			subi $sp, $sp, 4 # ջ������
			sw $t2, 0($sp) # addr of symbol[i] in stack
			subi $sp, $sp, 4 # ջ������
			sw $t1, 0($sp) # i in stack
			subi $sp, $sp, 4 # ջ������
			sw $t0, 0($sp) # t0 in stack
			subi $sp, $sp, 4 # ջ������
			
			addi $a0, $t0, 1 # index+1
			jal FullArray # FullArray(index+1)
			
			addi $sp, $sp, 4 # ջ������
			lw $t0, 0($sp) # t0 pop stack
			addi $sp, $sp, 4 # ջ������
			lw $t1, 0($sp) # i pop stack
			addi $sp, $sp, 4 # ջ������
			lw $t2, 0($sp) # addr of symbol[i] pop stack
			addi $sp, $sp, 4 # ջ������
			lw $ra, 0($sp) # ԭ����λ�ó�ջ
			############# �ݹ���� ##############
			sw $zero, 0($t2) #symbol[i] = 0
		End_if_2:
		addi $t1, $t1, 1 #i++
		j Loop_2
	Return:
	jr $ra
If_1:
	move $t1, $zero
	la $t2, array
	Loop_1:
		lw $a0, 0($t2)
		li $v0, 1
		syscall
		la $a0, str_spa
		li $v0, 4
		syscall #printf("%d ",array[i])
		addi $t1, $t1, 1
		addi $t2, $t2, 4
		blt $t1, $s0, Loop_1
	la $a0, str_ent
	li $v0, 4
	syscall #printf("\n")
	j Return