arch pce.cpu

// PC-Engine/TurboGrafx-16 HuC6280 (Modified WDC65C02 CPU)
asl
cla
clc
cld
cli
clv
clx
cly
csh
csl
dex
dey
inc
inx
iny
lsr
nop
pha
php
phx
phy
pla
plp
plx
ply
rol
ror
rti
rts
sax
say
sec
sed
sei
set
sxy
tax
tay
tsx
txa
txs
tya

asl #$FE
dex #$FE
dey #$FE
inx #$FE
iny #$FE
lsr #$FE
nop #$FE
rol #$FE
ror #$FE

ora #$FE
ora ($FE,x)
ora ($FE),y
ora ($FE)
ora $FEDC,y
ora $FEDC,x
ora $FE,x
ora $FEDC
ora $FE

and #$FE
and ($FE,x)
and ($FE),y
and ($FE)
and $FEDC,y
and $FEDC,x
and $FE,x
and $FEDC
and $FE

eor #$FE
eor ($FE,x)
eor ($FE),y
eor ($FE)
eor $FEDC,y
eor $FEDC,x
eor $FE,x
eor $FEDC
eor $FE

adc #$FE
adc ($FE,x)
adc ($FE),y
adc ($FE)
adc $FEDC,y
adc $FEDC,x
adc $FE,x
adc $FEDC
adc $FE

sta ($FE,x)
sta ($FE),y
sta ($FE)
sta $FEDC,y
sta $FEDC,x
sta $FE,x
sta $FEDC
sta $FE

lda #$FE
lda ($FE,x)
lda ($FE),y
lda ($FE)
lda $FEDC,y
lda $FEDC,x
lda $FE,x
lda $FEDC
lda $FE

cmp #$FE
cmp ($FE,x)
cmp ($FE),y
cmp ($FE)
cmp $FEDC,y
cmp $FEDC,x
cmp $FE,x
cmp $FEDC
cmp $FE

sbc #$FE
sbc ($FE,x)
sbc ($FE),y
sbc ($FE)
sbc $FEDC,y
sbc $FEDC,x
sbc $FE,x
sbc $FEDC
sbc $FE

asl $FEDC,x
asl $FE,x
asl $FEDC
asl $FE

lsr $FEDC,x
lsr $FE,x
lsr $FEDC
lsr $FE

rol $FEDC,x
rol $FE,x
rol $FEDC
rol $FE

ror $FEDC,x
ror $FE,x
ror $FEDC
ror $FE

inc $FEDC,x
inc $FE,x
inc $FEDC
inc $FE

dec $FEDC,x
dec $FE,x
dec $FEDC
dec $FE

bit #$FE
bit $FEDC,x
bit $FE,x
bit $FEDC
bit $FE

cpx #$FE
cpx $FEDC
cpx $FE

cpy #$FE
cpy $FEDC
cpy $FE

ldx #$FE
ldx $FEDC,y
ldx $FE,y
ldx $FEDC
ldx $FE

ldy #$FE
ldy $FEDC,x
ldy $FE,x
ldy $FEDC
ldy $FE

stx $FE,y
stx $FEDC
stx $FE

sty $FE,x
sty $FEDC
sty $FE

stz $FEDC,x
stz $FE,x
stz $FEDC
stz $FE

trb $FEDC
trb $FE

tsb $FEDC
tsb $FE

jmp (JMPINDIND,x)
jmp (JMPIND)
JMPINDIND:
jmp JMPABS
JMPIND:

jsr JSRABS
JMPABS:

bsr BSRREL
JSRABS:
bra BRAREL
BSRREL:
bpl BPLREL
BRAREL:
bmi BMIREL
BPLREL:
bvc BVCREL
BMIREL:
bvs BVSREL
BVCREL:
bcc BCCREL
BVSREL:
bcs BCSREL
BCCREL:
bne BNEREL
BCSREL:
beq BEQREL
BNEREL:

bbr0 $FE,BBR0REL
BEQREL:
bbr1 $FE,BBR1REL
BBR0REL:
bbr2 $FE,BBR2REL
BBR1REL:
bbr3 $FE,BBR3REL
BBR2REL:
bbr4 $FE,BBR4REL
BBR3REL:
bbr5 $FE,BBR5REL
BBR4REL:
bbr6 $FE,BBR6REL
BBR5REL:
bbr7 $FE,BBR7REL
BBR6REL:

bbs0 $FE,BBS0REL
BBR7REL:
bbs1 $FE,BBS1REL
BBS0REL:
bbs2 $FE,BBS2REL
BBS1REL:
bbs3 $FE,BBS3REL
BBS2REL:
bbs4 $FE,BBS4REL
BBS3REL:
bbs5 $FE,BBS5REL
BBS4REL:
bbs6 $FE,BBS6REL
BBS5REL:
bbs7 $FE,BBS7REL
BBS6REL:

rmb0 $FE
BBS7REL:
rmb1 $FE
rmb2 $FE
rmb3 $FE
rmb4 $FE
rmb5 $FE
rmb6 $FE
rmb7 $FE

smb0 $FE
smb1 $FE
smb2 $FE
smb3 $FE
smb4 $FE
smb5 $FE
smb6 $FE
smb7 $FE

st0 #$FE
st1 #$FE
st2 #$FE

tam #$FE
tma #$FE

tai $FEDC,$BA98,$7654
tdd $FEDC,$BA98,$7654
tia $FEDC,$BA98,$7654
tii $FEDC,$BA98,$7654
tin $FEDC,$BA98,$7654

tst #$FE,$DCBA,x
tst #$FE,$DC,x
tst #$FE,$DCBA
tst #$FE,$DC

brk #$FE