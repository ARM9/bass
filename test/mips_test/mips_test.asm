architecture n64.cpu

base $80000000

constant r0 = 0
constant r1 = 1
constant r2 = 2
constant r3 = 3
constant r4 = 4
constant r5 = 5
constant r6 = 6
constant r7 = 7
constant r8 = 8
constant r9 = 9
constant r10 = 10
constant r11 = 11
constant r12 = 12
constant r13 = 13
constant r14 = 14
constant r15 = 15
constant r16 = 16
constant r17 = 17
constant r18 = 18
constant r19 = 19
constant r20 = 20
constant r21 = 21
constant r22 = 22
constant r23 = 23
constant r24 = 24
constant r25 = 25
constant r26 = 26
constant r27 = 27
constant r28 = 28
constant r29 = 29
constant r30 = 30
constant r31 = 31

constant at = 1
constant v0 = 2
constant v1 = 3
constant a0 = 4
constant a1 = 5
constant a2 = 6
constant a3 = 7
constant t0 = 8
constant t1 = 9
constant t2 = 10
constant t3 = 11
constant t4 = 12
constant t5 = 13
constant t6 = 14
constant t7 = 15
constant s0 = 16
constant s1 = 17
constant s2 = 18
constant s3 = 19
constant s4 = 20
constant s5 = 21
constant s6 = 22
constant s7 = 23
constant t8 = 24
constant t9 = 25
constant k0 = 26
constant k1 = 27
constant gp = 28
constant sp = 29
constant s8 = 30
constant ra = 31

constant f0 = 0
constant f1 = 1
constant f2 = 2
constant f3 = 3
constant f4 = 4
constant f5 = 5
constant f6 = 6
constant f7 = 7
constant f8 = 8
constant f9 = 9
constant f10 = 10
constant f11 = 11
constant f12 = 12
constant f13 = 13
constant f14 = 14
constant f15 = 15
constant f16 = 16
constant f17 = 17
constant f18 = 18
constant f19 = 19
constant f20 = 20
constant f21 = 21
constant f22 = 22
constant f23 = 23
constant f24 = 24
constant f25 = 25
constant f26 = 26
constant f27 = 27
constant f28 = 28
constant f29 = 29
constant f30 = 30
constant f31 = 31


move 0, 0
addu 0, 0
daddu 0, 0

bc0f B
bc1f B
bc2f B
bc3f B
bc0t B
bc1t B
bc2t B
bc3t B
ldc1 31,$feed(31)
ldc2 31,$feed(31)
ldc3 31,$feed(31)
ld 31,$feed(31)
sdc1 31,$feed(31)
sdc2 31,$feed(31)
sdc3 31,$feed(31)
sd 31,$feed(31)

lwc0 31,-30584(31)
lwc1 31,-30584(31)
lwc2 31,0(31)
lwc3 31,0(31)
swc0 31,0(31)
swc1 31,0(31)
swc2 31,0(31)
swc3 31,0(31)

dmfc0 31, 31
dmfc1 31, 31
dmfc2 31, 31
dmfc3 31, 31
dmtc0 31, 31
dmtc1 31, 31
dmtc2 31, 31
dmtc3 31, 31
bc0fl B
bc1fl B
bc2fl B
bc3fl B
bc0tl B
bc1tl B
bc2tl B
bc3tl B
rfe
cop0 0x1abbaaa
cop1 0x1baabbb
cop2 0x1cafeba
cop3 0x1daadad
mfc0 1, 1
mfc1 1, 1
mfc2 1, 1
mfc3 1, 1
mtc0 1, 1
mtc1 1, 1
mtc2 1, 1
mtc3 1, 1
cfc0 1, 1
cfc1 1, 1
cfc2 1, 1
cfc3 1, 1
ctc0 1, 1
ctc1 1, 1
ctc2 1, 1
ctc3 1, 1
trunc.w.s 1, 2
trunc.w.s 1
trunc.w.d 3, 4
trunc.w.d 3
// MIPS CPU Pseudo Instructions (CPU):
abs 0
B:
abs 2,1

BAL:
b B
BEQZ:
bal BAL
BNEZ:
beqz r1,BEQZ
BEQZL:
bnez r1,BNEZ
BNEZL:
beqzl r1,BEQZL
bnezl r1,BNEZL

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
BGEL:
bgel r2,r3,BGEL
BGTL:
bgtl r2,r3,BGTL
BLEL:
blel r2,r3,BLEL
BLTL:
bltl r2,r3,BLTL
BGEUL:
bgeul r2,r3,BGEUL
BGTUL:
bgtul r2,r3,BGTUL
BLEUL:
bleul r2,r3,BLEUL
BLTUL:
bltul r2,r3,BLTUL

dabs r2,r3
dabs r2

ddiv r2,r3,r4
ddivu r2,r3,r4
div r2,r3,r4
divu r2,r3,r4

dli r1,$FFEEDDCCBBAA9988

dmul r1,r2,r3
dmul r1,r2
dmulu r1,r2,r3
dmulu r1,r2
dmulo r2,r3,r4
dmulo r2,r3
dmulou r2,r3,r4
dmulou r2,r3

dneg r1,r2
dneg r1
dnegu r1,r2
dnegu r1

drem r2,r3,r4
drem r2,r3
dremu r2,r3,r4
dremu r2,r3

drol r2,r3,r4
drol r2,r3
dror r2,r3,r4
dror r2,r3

JALP:
jal r1,JALP

LA:
la r1,LA
lli r1,$FFEE
li r1,$FFEEDDCC


mul r1,r2,r3
mul r1,r2
mulu r1,r2,r3
mulu r1,r2
mulo r2,r3,r4
mulo r2,r3
mulou r2,r3,r4
mulou r2,r3

neg r1,ra
neg r1
negu r1,ra
negu r1

not r1,ra
not r1

rem r2,r3,r4
rem r2,r3
remu r2,r3,r4
remu r2,r3

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

// MIPS CP1 Floating Point Unit (FPU) Pseudo Instructions (COP1):
l.s f1,$FFEE(ra)
l.d f1,$FFEE(ra)
s.s f1,$FFEE(ra)
s.d f1,$FFEE(ra)

// MIPS CPU Scalar Instructions (CPU):
nop
syscall $FEEDD
break $FEEDD
break
sync

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

mfhi r1
mthi r1
mflo r1
mtlo r1

dsllv r1,ra,r1
dsllv r1,r2
dsrlv r1,ra,r1
dsrlv r1,r2
dsrav r1,ra,r1
dsrav r1,r2

dsll r1,ra,1
dsll r1,1
dsrl r1,ra,1
dsrl r1,1
dsra r1,ra,1
dsra r1,1
dsll32 r1,ra,1
dsll32 r1,1
dsrl32 r1,ra,1
dsrl32 r1,1
dsra32 r1,ra,1
dsra32 r1,1

mult r1,ra
multu r1,ra
div r1,ra
divu r1,ra
dmult r1,ra
dmultu r1,ra
ddiv r1,ra
ddivu r1,ra

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
sltu r1,r2
dadd r1,ra,r1
dadd r1,r2
daddu r1,ra,r1
daddu r1,r2
dsub r1,ra,r1
dsub r1,r2
dsubu r1,ra,r1
dsubu r1,r2

tge r1,ra,$3FF
tge r1,$3FF
tgeu r1,ra,$3FF
tgeu r1,$3FF
tlt r1,ra,$3FF
tlt r1,$3FF
tltu r1,ra,$3FF
tltu r1,$3FF
teq r1,ra,$3FF
teq r1,$3FF
tne r1,ra,$3FF
BLTZ:
tne r1,$3FF

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

daddi r1,ra,$FFEE
daddi r1,$FFEE
daddiu r1,ra,$FFEE
BC0F:
daddiu r1,$FFEE

// MIPS CPU Scalar Load Instructions (CPU):
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
lwc1 f1,$FFEE(ra)
lld r1,$FFEE(ra)
ldc1 f1,$FFEE(ra)
ld r1,$FFEE(ra)

// MIPS CPU Scalar Store Instructions (CPU):
sb r1,$FFEE(ra)
sh r1,$FFEE(ra)
swl r1,$FFEE(ra)
sw r1,$FFEE(ra)
sdl r1,$FFEE(ra)
sdr r1,$FFEE(ra)
swr r1,$FFEE(ra)
sc r1,$FFEE(ra)
swc1 f1,$FFEE(ra)
scd r1,$FFEE(ra)
sdc1 f1,$FFEE(ra)
sd r1,$FFEE(ra)

cache r1,$FFEE(ra)

tlbr
tlbwi
tlbwr
tlbp
eret

// CP1 Floating Point Unit (FPU) Instructions (COP1):
add.s f1,f31,f1
add.s f1,f2
add.d f1,f31,f1
add.d f1,f2
sub.s f1,f31,f1
sub.s f1,f2
sub.d f1,f31,f1
sub.d f1,f2
mul.s f1,f31,f1
mul.s f1,f2
mul.d f1,f31,f1
mul.d f1,f2
div.s f1,f31,f1
div.s f1,f2
div.d f1,f31,f1
div.d f1,f2

sqrt.s f1,f31
sqrt.s f1
sqrt.d f1,f31
sqrt.d f1
abs.s f1,f31
abs.s f1
abs.d f1,f31
abs.d f1
mov.s f1,f31
mov.d f1,f31
neg.s f1,f31
neg.s f1
neg.d f1,f31
neg.d f1
round.l.s f1,f31
round.l.s f1
round.l.d f1,f31
round.l.d f1
trunc.l.s f1,f31
trunc.l.s f1
trunc.l.d f1,f31
trunc.l.d f1
ceil.l.s f1,f31
ceil.l.s f1
ceil.l.d f1,f31
ceil.l.d f1
floor.l.s f1,f31
floor.l.s f1
floor.l.d f1,f31
floor.l.d f1
round.w.s f1,f31
round.w.s f1
round.w.d f1,f31
round.w.d f1
trunc.w.s f1,f31
trunc.w.s f1
trunc.w.d f1,f31
trunc.w.d f1
ceil.w.s f1,f31
ceil.w.s f1
ceil.w.d f1,f31
ceil.w.d f1
floor.w.s f1,f31
floor.w.s f1
floor.w.d f1,f31
floor.w.d f1
cvt.s.d f1,f31
cvt.s.d f1
cvt.s.w f1,f31
cvt.s.w f1
cvt.s.l f1,f31
cvt.s.l f1
cvt.d.s f1,f31
cvt.d.s f1
cvt.d.w f1,f31
cvt.d.w f1
cvt.d.l f1,f31
cvt.d.l f1
cvt.w.s f1,f31
cvt.w.s f1
cvt.w.d f1,f31
cvt.w.d f1
cvt.l.s f1,f31
cvt.l.s f1
cvt.l.d f1,f31
cvt.l.d f1

c.f.s f1,f31
c.f.d f1,f31
c.un.s f1,f31
c.un.d f1,f31
c.eq.s f1,f31
c.eq.d f1,f31
c.ueq.s f1,f31
c.ueq.d f1,f31
c.olt.s f1,f31
c.olt.d f1,f31
c.ult.s f1,f31
c.ult.d f1,f31
c.ole.s f1,f31
c.ole.d f1,f31
c.ule.s f1,f31
c.ule.d f1,f31
c.sf.s f1,f31
c.sf.d f1,f31
c.ngle.s f1,f31
c.ngle.d f1,f31
c.seq.s f1,f31
c.seq.d f1,f31
c.ngl.s f1,f31
c.ngl.d f1,f31
c.lt.s f1,f31
c.lt.d f1,f31
c.nge.s f1,f31
c.nge.d f1,f31
c.le.s f1,f31
c.le.d f1,f31
c.ngt.s f1,f31
c.ngt.d f1,f31
