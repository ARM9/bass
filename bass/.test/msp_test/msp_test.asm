arch sgi.msp
endian msb

base $80000000

// SGI VICE - MSP MIPS 4000 CPU Registers
constant r0(0)
constant r1(1)
constant r2(2)
constant r3(3)
constant r4(4)
constant r5(5)
constant r6(6)
constant r7(7)
constant r8(8)
constant r9(9)
constant r10(10)
constant r11(11)
constant r12(12)
constant r13(13)
constant r14(14)
constant r15(15)
constant r16(16)
constant r17(17)
constant r18(18)
constant r19(19)
constant r20(20)
constant r21(21)
constant r22(22)
constant r23(23)
constant r24(24)
constant r25(25)
constant r26(26)
constant r27(27)
constant r28(28)
constant r29(29)
constant r30(30)
constant r31(31)

constant at(1)
constant v0(2)
constant v1(3)
constant a0(4)
constant a1(5)
constant a2(6)
constant a3(7)
constant t0(8)
constant t1(9)
constant t2(10)
constant t3(11)
constant t4(12)
constant t5(13)
constant t6(14)
constant t7(15)
constant s0(16)
constant s1(17)
constant s2(18)
constant s3(19)
constant s4(20)
constant s5(21)
constant s6(22)
constant s7(23)
constant t8(24)
constant t9(25)
constant k0(26)
constant k1(27)
constant gp(28)
constant sp(29)
constant s8(30)
constant ra(31)

// SGI VICE - MSP CP0 Control Registers (MTF0/MTC0):
constant c0(0)   // MSP CP0 Control Register 00: I/DMEM Address For DMA (RW) ($04040000)
constant c1(1)   // MSP CP0 Control Register 01:   DRAM Address For DMA (RW) ($04040004)
constant c2(2)   // MSP CP0 Control Register 02: DMA READ  Length (DRAM -> I/DMEM) (RW) ($04040008)
constant c3(3)   // MSP CP0 Control Register 03: DMA WRITE Length (DRAM <- I/DMEM) (RW) ($0404000C)
constant c4(4)   // MSP CP0 Control Register 04: MSP Status (RW) ($04040010)
constant c5(5)   // MSP CP0 Control Register 05: DMA Full (R) ($04040014)
constant c6(6)   // MSP CP0 Control Register 06: DMA Busy (R) ($04040018)
constant c7(7)   // MSP CP0 Control Register 07: CPU-MSP Semaphore (RW) ($0404001C)
constant c8(8)   // MSP CP0 Control Register 08: RDP Command Buffer START (RW) ($04100000)
constant c9(9)   // MSP CP0 Control Register 09: RDP Command Buffer END (RW) ($04100004)
constant c10(10) // MSP CP0 Control Register 10: RDP Command Buffer CURRENT (R) ($04100008)
constant c11(11) // MSP CP0 Control Register 11: RDP Status (RW) ($0410000C)
constant c12(12) // MSP CP0 Control Register 12: RDP Clock Counter (R) ($04100010)
constant c13(13) // MSP CP0 Control Register 13: RDP Command Buffer BUSY (R) ($04100014)
constant c14(14) // MSP CP0 Control Register 14: RDP Pipe BUSY (R) ($04100018)
constant c15(15) // MSP CP0 Control Register 15: RDP TMEM BUSY (R) ($0410001C)

// SGI VICE - MSP CP2 Control Registers (CFC2/CTC2):
constant vco(0) // MSP CP2 Control Register 0: Vector Carry Out
constant vcc(1) // MSP CP2 Control Register 1: Vector Compare Code
constant vce(2) // MSP CP2 Control Register 2: Vector Compare Extension

// SGI VICE - MSP MIPS 4000 CPU Pseudo Instructions (CPU):
abs r2,r3
B:
abs r2

BEQZ:
b B
BNEZ:
beqz r1,BEQZ
bnez r1,BNEZ

BGE:
bge r2,r3,BGE
BGT:
bgt r2,r3,BGT
BLE:
ble r2,r3,BLE
BLT:
blt r2,r3,BLT
BGEU:
bgeu r2,r3,BGEU
BGTU:
bgtu r2,r3,BGTU
BLEU:
bleu r2,r3,BLEU
BLTU:
bltu r2,r3,BLTU

JALP:
jal r1,JALP

LA:
la r1,LA
lli r1,$FFEE
li r1,$FFEEDDCC

move r1,ra

neg r1,ra
neg r1
negu r1,ra
negu r1

not r1,ra
not r1

seq r1,r2,r3
seq r1,r2
sge r1,r2,r3
sge r1,r2
sgeu r1,r2,r3
sgeu r1,r2
sgt r1,r2,r3
sgt r1,r2
sgtu r1,r2,r3
sgtu r1,r2
sle r1,r2,r3
sle r1,r2
sleu r1,r2,r3
sleu r1,r2
sne r1,r2,r3
sne r1,r2

ssnop

subi r1,ra,1
subi r1,1
subiu r1,ra,1
subiu r1,1

// SGI VICE - MSP MIPS 4000 CPU Scalar Instructions (CPU):
nop
break $FEEDD
break

sll r1,ra,1
sll r1,1
srl r1,ra,1
srl r1,1
sra r1,ra,1
sra r1,1

sllv r1,ra,r1
sllv r1,r2
srlv r1,ra,r1
srlv r1,r2
srav r1,ra,r1
srav r1,r2

add r1,ra,r1
add r1,r2
addu r1,ra,r1
addu r1,r2
sub r1,ra,r1
sub r1,r2
subu r1,ra,r1
subu r1,r2
and r1,ra,r1
and r1,r2
or r1,ra,r1
or r1,r2
xor r1,ra,r1
xor r1,r2
nor r1,ra,r1
nor r1,r2

slt r1,ra,r1
slt r1,r2
sltu r1,ra,r1
BLTZ:
sltu r1,r2

BGEZ:
bltz r1,BLTZ
BLTZAL:
bgez r1,BGEZ
BGEZAL:
bltzal r1,BLTZAL
BLEZ:
bgezal r1,BGEZAL
BGTZ:
blez r1,BLEZ
BEQ:
bgtz r1,BGTZ

BNE:
beq r1,r1,BEQ
bne r1,r1,BNE

J:
j J
JAL:
jal JAL

jr r1
jalr r1
jalr ra,r1

addi r1,ra,$FFEE
addi r1,$FFEE
addiu r1,ra,$FFEE
addiu r1,$FFEE
slti r1,ra,$FFEE
slti r1,$FFEE
sltiu r1,ra,$FFEE
sltiu r1,$FFEE
andi r1,ra,$FFEE
andi r1,$FFEE
ori r1,ra,$FFEE
ori r1,$FFEE
xori r1,ra,$FFEE
xori r1,$FFEE

// SGI VICE - MSP MIPS 4000 CPU Scalar Load Instructions (CPU):
lui r1,$FFEE
lb r1,$FFEE(ra)
lh r1,$FFEE(ra)
lw r1,$FFEE(ra)
lbu r1,$FFEE(ra)
lhu r1,$FFEE(ra)

// SGI VICE - MSP MIPS 4000 CPU Scalar Store Instructions (CPU):
sb r1,$FFEE(ra)
sh r1,$FFEE(ra)
sw r1,$FFEE(ra)

// SGI VICE - MSP CP0 Control Instructions (COP0):
mfc0 r1,c15
mtc0 r1,c15

// SGI VICE - MSP CP2 Control Instructions (COP2):
mfc2 r1,v1[e15]
mtc2 r1,v1[e15]
mfc2 r1,r2
mtc2 r1,r2
cfc2 r1,vce
ctc2 r1,vce

// SGI VICE - MSP CP2 Vector Operation Instructions (COP2):
vmulf v1,v1,v1[e15]
vmulf v1,v1,v1
vmulf v1,v1[e15]
vmulf v1,v1
vmulu v1,v1,v1[e15]
vmulu v1,v1,v1
vmulu v1,v1[e15]
vmulu v1,v1
vrndp v1,v1,v1[e15]
vrndp v1,v1,v1
vrndp v1,v1[e15]
vrndp v1,v1
vmulq v1,v1,v1[e15]
vmulq v1,v1,v1
vmulq v1,v1[e15]
vmulq v1,v1
vmudl v1,v1,v1[e15]
vmudl v1,v1,v1
vmudl v1,v1[e15]
vmudl v1,v1
vmudm v1,v1,v1[e15]
vmudm v1,v1,v1
vmudm v1,v1[e15]
vmudm v1,v1
vmudn v1,v1,v1[e15]
vmudn v1,v1,v1
vmudn v1,v1[e15]
vmudn v1,v1
vmudh v1,v1,v1[e15]
vmudh v1,v1,v1
vmudh v1,v1[e15]
vmudh v1,v1

vmacf v1,v1,v1[e15]
vmacf v1,v1,v1
vmacf v1,v1[e15]
vmacf v1,v1
vmacu v1,v1,v1[e15]
vmacu v1,v1,v1
vmacu v1,v1[e15]
vmacu v1,v1
vrndn v1,v1,v1[e15]
vrndn v1,v1,v1
vrndn v1,v1[e15]
vrndn v1,v1
vmacq v1,v1,v1[e15]
vmacq v1,v1,v1
vmacq v1,v1[e15]
vmacq v1,v1
vmadl v1,v1,v1[e15]
vmadl v1,v1,v1
vmadl v1,v1[e15]
vmadl v1,v1
vmadm v1,v1,v1[e15]
vmadm v1,v1,v1
vmadm v1,v1[e15]
vmadm v1,v1
vmadn v1,v1,v1[e15]
vmadn v1,v1,v1
vmadn v1,v1[e15]
vmadn v1,v1
vmadh v1,v1,v1[e15]
vmadh v1,v1,v1
vmadh v1,v1[e15]
vmadh v1,v1

vadd v1,v1,v1[e15]
vadd v1,v1,v1
vadd v1,v1[e15]
vadd v1,v1
vsub v1,v1,v1[e15]
vsub v1,v1,v1
vsub v1,v1[e15]
vsub v1,v1
vsut v1,v1,v1[e15]
vsut v1,v1,v1
vsut v1,v1[e15]
vsut v1,v1
vabs v1,v1,v1[e15]
vabs v1,v1,v1
vabs v1,v1[e15]
vabs v1,v1
vaddc v1,v1,v1[e15]
vaddc v1,v1,v1
vaddc v1,v1[e15]
vaddc v1,v1
vsubc v1,v1,v1[e15]
vsubc v1,v1,v1
vsubc v1,v1[e15]
vsubc v1,v1
vaddb v1,v1,v1[e15]
vaddb v1,v1,v1
vaddb v1,v1[e15]
vaddb v1,v1
vsubb v1,v1,v1[e15]
vsubb v1,v1,v1
vsubb v1,v1[e15]
vsubb v1,v1
vaccb v1,v1,v1[e15]
vaccb v1,v1,v1
vaccb v1,v1[e15]
vaccb v1,v1
vsucb v1,v1,v1[e15]
vsucb v1,v1,v1
vsucb v1,v1[e15]
vsucb v1,v1
vsad v1,v1,v1[e15]
vsad v1,v1,v1
vsad v1,v1[e15]
vsad v1,v1
vsac v1,v1,v1[e15]
vsac v1,v1,v1
vsac v1,v1[e15]
vsac v1,v1
vsum v1,v1,v1[e15]
vsum v1,v1,v1
vsum v1,v1[e15]
vsum v1,v1
vsar v1,v1,v1[e15]
vsar v1,v1,v1
vsar v1,v1[e15]
vsar v1,v1
vacc v1,v1,v1[e15]
vacc v1,v1,v1
vacc v1,v1[e15]
vacc v1,v1
vsuc v1,v1,v1[e15]
vsuc v1,v1,v1
vsuc v1,v1[e15]
vsuc v1,v1

vlt v1,v1,v1[e15]
vlt v1,v1,v1
vlt v1,v1[e15]
vlt v1,v1
veq v1,v1,v1[e15]
veq v1,v1,v1
veq v1,v1[e15]
veq v1,v1
vne v1,v1,v1[e15]
vne v1,v1,v1
vne v1,v1[e15]
vne v1,v1
vge v1,v1,v1[e15]
vge v1,v1,v1
vge v1,v1[e15]
vge v1,v1
vcl v1,v1,v1[e15]
vcl v1,v1,v1
vcl v1,v1[e15]
vcl v1,v1
vch v1,v1,v1[e15]
vch v1,v1,v1
vch v1,v1[e15]
vch v1,v1
vcr v1,v1,v1[e15]
vcr v1,v1,v1
vcr v1,v1[e15]
vcr v1,v1
vmrg v1,v1,v1[e15]
vmrg v1,v1,v1
vmrg v1,v1[e15]
vmrg v1,v1

vand v1,v1,v1[e15]
vand v1,v1,v1
vand v1,v1[e15]
vand v1,v1
vnand v1,v1,v1[e15]
vnand v1,v1,v1
vnand v1,v1[e15]
vnand v1,v1
vor v1,v1,v1[e15]
vor v1,v1,v1
vor v1,v1[e15]
vor v1,v1
vnor v1,v1,v1[e15]
vnor v1,v1,v1
vnor v1,v1[e15]
vnor v1,v1
vxor v1,v1,v1[e15]
vxor v1,v1,v1
vxor v1,v1[e15]
vxor v1,v1
vnxor v1,v1,v1[e15]
vnxor v1,v1,v1
vnxor v1,v1[e15]
vnxor v1,v1
v056 v1,v1,v1[e15]
v056 v1,v1,v1
v056 v1,v1[e15]
v056 v1,v1
v057 v1,v1,v1[e15]
v057 v1,v1,v1
v057 v1,v1[e15]
v057 v1,v1

vsumb v1,v1,v1[e15]
vsumb v1,v1,v1
vsumb v1,v1[e15]
vsumb v1,v1
vsacb v1,v1,v1[e15]
vsacb v1,v1,v1
vsacb v1,v1[e15]
vsacb v1,v1
vmulb v1,v1,v1[e15]
vmulb v1,v1,v1
vmulb v1,v1[e15]
vmulb v1,v1
vmulbn v1,v1,v1[e15]
vmulbn v1,v1,v1
vmulbn v1,v1[e15]
vmulbn v1,v1
vmacb v1,v1,v1[e15]
vmacb v1,v1,v1
vmacb v1,v1[e15]
vmacb v1,v1
vmsucb v1,v1,v1[e15]
vmsucb v1,v1,v1
vmsucb v1,v1[e15]
vmsucb v1,v1
vrnd v1,v1,v1[e15]
vrnd v1,v1,v1
vrnd v1,v1[e15]
vrnd v1,v1
vrndb v1,v1,v1[e15]
vrndb v1,v1,v1
vrndb v1,v1[e15]
vrndb v1,v1

vextt v1,v1,v1[e15]
vextt v1,v1,v1
vextt v1,v1[e15]
vextt v1,v1
vextq v1,v1,v1[e15]
vextq v1,v1,v1
vextq v1,v1[e15]
vextq v1,v1
vextn v1,v1,v1[e15]
vextn v1,v1,v1
vextn v1,v1[e15]
vextn v1,v1
v073 v1,v1,v1[e15]
v073 v1,v1,v1
v073 v1,v1[e15]
v073 v1,v1
vinst v1,v1,v1[e15]
vinst v1,v1,v1
vinst v1,v1[e15]
vinst v1,v1
vinsq v1,v1,v1[e15]
vinsq v1,v1,v1
vinsq v1,v1[e15]
vinsq v1,v1
vinsn v1,v1,v1[e15]
vinsn v1,v1,v1
vinsn v1,v1[e15]
vinsn v1,v1
vnull

// SGI VICE - MSP CP2 Vector Load Instructions (LWC2):
lbv v1[e15],$3F(r31)
lsv v1[e15],$3F(r31)
llv v1[e15],$3F(r31)
ldv v1[e15],$3F(r31)
lqv v1[e15],$3F(r31)
lrv v1[e15],$3F(r31)
lpv v1[e15],$3F(r31)
luv v1[e15],$3F(r31)
lxv v1[e15],$3F(r31)
lzv v1[e15],$3F(r31)
lhv v1[e15],$3F(r31)
lfv v1[e15],$3F(r31)
lav v1[e15],$3F(r31)
ltv v1[e15],$3F(r31)

// SGI VICE - MSP CP2 Vector Store Instructions (SWC2):
sbv v1[e15],$3F(r31)
ssv v1[e15],$3F(r31)
slv v1[e15],$3F(r31)
sdv v1[e15],$3F(r31)
sqv v1[e15],$3F(r31)
srv v1[e15],$3F(r31)
spv v1[e15],$3F(r31)
suv v1[e15],$3F(r31)
sxv v1[e15],$3F(r31)
szv v1[e15],$3F(r31)
shv v1[e15],$3F(r31)
sfv v1[e15],$3F(r31)
sav v1[e15],$3F(r31)
stv v1[e15],$3F(r31)
