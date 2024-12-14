.data
# �������

.macro end
    li      $v0, 10
    syscall
.end_macro

# �ӱ�׼���봦�õ�һ�����ͱ��������洢�� %des �Ĵ�����
.macro getint(%des)
    li      $v0, 5
    syscall
    move    %des, $v0
.end_macro

# ���׼�����д��һ�����ݣ�������ݱ����� %src �Ĵ�����
.macro printint(%src)
    move    $a0, %src
    li      $v0, 1
    syscall
.end_macro

# ���Ĵ��� %src �е�������ջ
.macro push(%src)
    addi    $sp, $sp, -4
    sw      %src, 0($sp)
.end_macro

# ��ջ�����ݳ�ջ���������� %des �Ĵ�����
.macro pop(%des)
    lw      %des, 0($sp)
    addi    $sp, $sp, 4
.end_macro

symbol: .space 28
array: .space 28

str_space: .asciiz " "
str_enter: .asciiz "\n"

.macro getsymbol(%des,%src)
	sll %src, %src, 2
	lw %des, symbol(%src)
	srl %src, %src, 2
.end_macro

.macro putsymbol(%des,%src)
	sll %src, %src, 2
	sw %des, symbol(%src)
	srl %src, %src, 2
.end_macro


.macro getarray(%des,%src)
	sll %src, %src, 2
	lw %des, array(%src)
	srl %src, %src, 2
.end_macro

.macro putarray(%des,%src)
	sll %src, %src, 2
	sw %des, array(%src)
	srl %src, %src, 2
.end_macro


.text
main:
getint($s0)
move $a0,$s0

la $a0,0
jal FullArray


end

FullArray:
        #��ջ
	push($ra)
	push($t0)
	push($t1)
	push($t2)
	
	#������������ʱ�Ĵ�����
	move $t0,$a0
	
	
	beq $t0,$s0 else
	if:
	li $t1,0
		loop2:
		beq $t1,$s0,loop1_end
		getsymbol($t2,$t1)
		beq $t2 $0 if_1
		else_1:
		j else_1_end
		if_1:
		addi $t2,$t1,1
		putarray($t2,$t0)
		li $t2,1
		putsymbol($t2,$t1)
		addi $a0,$t0,1
		jal FullArray
		li $t2,0
		putsymbol($t2,$t1)
		
		else_1_end:
		
		addi $t1,$t1,1
		j loop2
		loop2_end:
		
	j if_end
	else:
		li $t1,0
		loop1:
		beq $t1,$s0,loop1_end
		getarray($t2,$t1)
		printint($t2)
		la $a0,str_space
		li $v0,4
		syscall
		addi $t1,$t1,1
		j loop1
		loop1_end:
		la $a0,str_enter
		li $v0,4
		syscall
		#��ջ
		
		pop($t2)
		pop($t1)
		pop($t0)
		pop($ra)
		#����
		jr $ra
		
	
	if_end:
	#��ջ
		pop($t2)
		pop($t1)
		pop($t0)
		pop($ra)
		#����
		jr $ra