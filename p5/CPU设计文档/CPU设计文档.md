# CPU设计文档
## 设计草稿


### 模块设计
```
module IFU(
		input reset,
		input clk,
		input PCSrc,
		input Jump,
		input jr,
		input [31:0] jrAddr,
		output reg [31:0] PC,
		output wire [31:0] instr,
		input Stall_PC_F,
		input [31:0] PCBranch,
		input [31:0] PCJump
    );
```
和跳转指令有关的信号都来自D
```
module GRF(
	 input wire [31:0] WPC,
    input wire clk,
	 input wire reset,
    input wire WE3,
    input wire [4:0] A1,
	 input wire [4:0] A2,
	 input wire [4:0] A3,
    input [31:0] WD3,
    output [31:0] RD1,RD2
);
```
整个GRF处于D中，大部分端口信号是D信号，
但是WPC应该要接pc_W
```
module ALU(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C,
	 output zero
    );
```
ALU处于E级
```
module DM(
		input reset,clk,WE,
		input [31:0] A,
		input [31:0] WD,
		output [31:0] RD,
		input [31:0] pc
    );
```
DM处于M级

rs和rt的需求者：
PC，ALU，DM
PC有需求的指令：beq，jr，转发到D级
ALU有需求的指令：

供给数据：Result_M,Result_W
Result与所有需要写入的指令的值有关

T逻辑和转发逻辑写在顶层模块中

### 测试方案
使用python代码随机生成会汇编代码，MARS导出机器码到code.txt中，对比输出

比如想要生成

一个好的调试方式是，在控制器中加入一个按周期输出当前指令的功能，方便调试。

```
always #10 begin
	 if(add) $display("add");
	 if(sub) $display("sub");
	 if(AND) $display("AND");
	 if(OR) $display("OR");
	 if(slt) $display("slt");
	 if(lw) $display("lw");
	 if(sw) $display("sw");
	 if(beq) $display("beq");
	 if(addi) $display("addi");
	 if(ori) $display("ori");
	 if(lui) $display("lui");
	 if(j) $display("j");
	 if(nop) $display("nop");
	 if(jr)$display("jr");
	end
```

这样就可以很容易看出哪条指令出错了，或者有没有两条指令占用了同一个op和funct。

需要注意到是，跳转指令如果随机生成很容易让代码陷入循环，所以最好自己设计测试数据。可以采用随机生成加自己嵌入跳转指令的方式。

我的测试数据的一小部分：
```
sub $0,$2,$20
add $4,$4,$7
ori $4,$17,63854
ori $0,$21,45274
lui $2,87
lui $0,65095
label0:
sw $4,7524($0)
lui $5,18550
ori $0,$0,9050
beq $0,$5,label0
label1:
add $0,$14,$2
add $0,$19,$17
ori $1,$1,52776
beq $1,$5,label0
lui $4,50850
lui $1,38860
lui $1,52005
lui $1,8856
label2:
nop
sw $1,11736($0)
add $1,$2,$20
lui $4,22620
ori $2,$21,34227
add $5,$2,$24
add $1,$12,$16
nop
ori $4,$4,4841
beq $4,$1,label2
lui $2,43266
nop
add $4,$0,$1
lui $2,41688
lw $2,8740($0)
sub $1,$19,$13
lw $1,10564($0)
nop
sub $5,$2,$17
lui $0,43011
sw $4,7108($0)
add $1,$5,$21
sw $2,6248($0)
ori $1,$22,5675
ori $5,$5,2871
beq $5,$2,label2
lw $0,8224($0)
ori $2,$2,11942
beq $2,$1,label2
sub $2,$2,$21
sw $3,6852($0)
sw $5,6944($0)
ori $3,$22,5236
ori $5,$9,17004
nop
ori $5,$23,23992
add $3,$17,$11
nop
```

### 思考题汇总
1.
原因可能有：
控制冒险：流水线处理器在执行分支指令时，需要等待分支条件的结果确定后才能继续执行后续指令。如果分支预测错误，已经进入流水线的指令可能需要被丢弃，导致流水线清空，这种清空和重新填充流水线的操作会带来额外的开销
。
流水线停顿：为了等待分支条件的结果，流水线可能需要插入空操作（NOP），即停顿，直到分支结果明确。这种停顿会降低流水线的效率，因为流水线的设计初衷是连续不断地处理指令
。
分支预测的准确性：现代CPU的分支预测正确率虽然很高，但并非100%。当分支预测失败时，会导致流水线清空，这种预测失败带来的开销可能会抵消提前分支判断带来的好处
。
指令相关性：即使分支预测正确，如果后续指令之间存在数据依赖，流水线仍然可能需要停顿，等待必要的数据变得可用。这种数据依赖导致的停顿同样会影响流水线的效率
。
比如
```
assembly
beq $s0, $s1, target_label  # 如果 $s0 == $s1，跳转到 target_label
add $t0, $t1, $t2           # 将 $t1 和 $t2 相加，结果存储到 $t0
target_label:
sub $s0, $t0, $t3           # 从 $t0 减去 $t3，结果存储到 $s0
```
2.jal指令如果进行跳转，此时处于F级的指令会作废，但是因为有延迟槽的存在，编译器会寻找与跳转指令无关的指令，改变执行顺序将其放到该阶段，从而避免无效指令。由于该指令（PC+4）已经在F级执行，所以存入寄存器的地址就是PC+8.

3.如果转发数据可以来源于功能部件也可以来源于流水寄存器，很容易混淆一个数据究竟是在哪个阶段产生或者使用，不利于理清思路；而且如果不用来源于流水寄存器，在考虑是否使用流水寄存器的时候，很容易误认为在数据刚刚产生的时候就进行转发会更快，然而如果每一个转发的数据都这样做，流水寄存器将没有存在的必要，最后设计的CPU会成为一个单周期CPU，然而单周期虽然只需要一个周期就能完成指令，但是电路时延其实是更高的。

4.有的时候需要在同一周期内读取和写入寄存器，所以需要GPR内部转发，
可以使用下降沿写入寄存器的方式实现。

5.转发时数据的需求者可能来源于ALU，PC等所有用到了RD1，RD2的部件。W到D的，M到E的，M到D的。

6.主要看指令是否是包含需求者和供给者，如果包含需求者，注意使用转发多路选择器之后的数据，如果包含供给者，注意流水数据在供给者的多路选择之前

7.我的方式是控制信号驱动型，优点是代码量小，而且接近硬件的逻辑，缺点是不容易查错，增加指令的时候不如指令驱动型直观