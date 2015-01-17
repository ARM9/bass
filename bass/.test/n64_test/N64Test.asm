arch n64.cpu
output "N64Test.n64", create
endian msb

base $80000000

// N64 MIPS 4300 CPU Registers
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

// N64 MIPS 4300 CPU Scalar Instructions (CPU):
nop
syscall $FEEDD
break $FEEDD
sync

sll r1,ra,1
srl r1,ra,1
sra r1,ra,1

sllv r1,ra,r1
srlv r1,ra,r1
srav r1,ra,r1

mfhi r1
mthi r1
mflo r1
mtlo r1

dsllv r1,ra,r1
dsrlv r1,ra,r1
dsrav r1,ra,r1

dsll r1,ra,1
dsrl r1,ra,1
dsra r1,ra,1

dsll32 r1,ra,1
dsrl32 r1,ra,1
dsra32 r1,ra,1

mult r1,ra
multu r1,ra
div r1,ra
divu r1,ra
dmult r1,ra
dmultu r1,ra
ddiv r1,ra
ddivu r1,ra

add r1,ra,r1
addu r1,ra,r1
sub r1,ra,r1
subu r1,ra,r1
and r1,ra,r1
or r1,ra,r1
xor r1,ra,r1
nor r1,ra,r1

slt r1,ra,r1
sltu r1,ra,r1
dadd r1,ra,r1
daddu r1,ra,r1
dsub r1,ra,r1
dsubu r1,ra,r1

tge r1,ra,$3FF
tgeu r1,ra,$3FF
tlt r1,ra,$3FF
tltu r1,ra,$3FF
teq r1,ra,$3FF
BLTZ:
tne r1,ra,$3FF

BGEZ:
bltz r1,BLTZ
BLTZL:
bgez r1,BGEZ
BGEZL:
bltzl r1,BLTZL
BLTZAL:
bgezl r1,BGEZL
BGEZAL:
bltzal r1,BLTZAL
BLTZALL:
bgezal r1,BGEZAL
BGEZALL:
bltzall r1,BLTZALL
BLEZ:
bgezall r1,BGEZALL
BGTZ:
blez r1,BLEZ
BLEZL:
bgtz r1,BGTZ
BGTZL:
blezl r1,BLEZL
BEQ:
bgtzl r1,BGTZL

BNE:
beq r1,r1,BEQ
BEQL:
bne r1,r1,BNE
BNEL:
beql r1,r1,BEQL
bnel r1,r1,BNEL

J:
j J
JAL:
jal JAL

jr r1
jalr r1
jalr ra,r1

tgei r1,$FFEE
tgeiu r1,$FFEE
tlti r1,$FFEE
tltiu r1,$FFEE
teqi r1,$FFEE
tnei r1,$FFEE

addi r1,ra,$FFEE
addiu r1,ra,$FFEE
slti r1,ra,$FFEE
sltiu r1,ra,$FFEE
andi r1,ra,$FFEE
ori r1,ra,$FFEE
xori r1,ra,$FFEE

daddi r1,ra,$FFEE
BC0F:
daddiu r1,ra,$FFEE

// N64 MIPS 4300 CPU Branch On Coprocessor Instructions (COPz):
BC1F:
bc0f BC0F
BC0T:
bc1f BC1F
BC1T:
bc0t BC0T
BC0FL:
bc1t BC1T
BC1FL:
bc0fl BC0FL
BC0TL:
bc1fl BC1FL
BC1TL:
bc0tl BC0TL
bc1tl BC1TL

// N64 MIPS 4300 CPU Scalar Load Instructions (CPU):
lui r1,$FFEE
ldl r1,$FFEE(ra)
ldr r1,$FFEE(ra)
lb r1,$FFEE(ra)
lh r1,$FFEE(ra)
lwl r1,$FFEE(ra)
lw r1,$FFEE(ra)
lbu r1,$FFEE(ra)
lhu r1,$FFEE(ra)
lwr r1,$FFEE(ra)
lwu r1,$FFEE(ra)
ll r1,$FFEE(ra)
lwc1 r1,$FFEE(ra)
lld r1,$FFEE(ra)
ldc1 r1,$FFEE(ra)
ld r1,$FFEE(ra)

// N64 MIPS 4300 CPU Scalar Store Instructions (CPU):
sb r1,$FFEE(ra)
sh r1,$FFEE(ra)
swl r1,$FFEE(ra)
sw r1,$FFEE(ra)
sdl r1,$FFEE(ra)
sdr r1,$FFEE(ra)
swr r1,$FFEE(ra)
sc r1,$FFEE(ra)
swc1 r1,$FFEE(ra)
scd r1,$FFEE(ra)
sdc1 r1,$FFEE(ra)
sd r1,$FFEE(ra)

cache r1,$FFEE(ra)

// N64 CP0 Control Instructions (COP0):
mfc0 r1,ra
dmfc0 r1,ra
mtc0 r1,ra
dmtc0 r1,ra

// N64 CP1 Control Instructions (COP1):
mfc1 r1,ra
mtc1 r1,ra
cfc1 r1,ra
ctc1 r1,ra

tlbr
tlbwi
tlbwr
tlbp
eret

cop0 $1FFEEDD
cop1 $1FFEEDD

// N64 CP1 Floating Point Unit (FPU) Instructions (COP1):
