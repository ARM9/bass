architecture snes.smp

// Super Famicom/SNES SPC-700 SMP
nop
brk
rts
rti
xcn
wai
stp

clp
clc
cli
clv
sep
sec
sei
cmc

php
pha
phx
phy
plp
pla
plx
ply

inx
iny
dex
dey

tax
tay
tsx 
txa
txs
tya

mul
div

das
daa

jst $F
set $FE:7
clr $FE:7
bbs $FE:7=BBSREL
bbc $FE:7=BBCREL
BBSREL:

jmp (JMPINDIND,x)
BBCREL:
jmp JMPABS
JMPINDIND:
jsr JSRREL
JMPABS:
jsp JSPREL
JSRREL:

bne --y=BNERELDECY
JSPREL:
bne --$FE=BNERELDEC
BNERELDECY:
bne $FE,x=BNERELX
BNERELDEC:
bne $FE=BNERELZP
BNERELX:

bra BRAREL
BNERELZP:
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

tsb $FEDC
BEQREL:
trb $FEDC

inw $FE
dew $FE
adw $FE
sbw $FE
cpw $FE
ldw $FE
stw $FE

orc !$1FED:7
orc $1FED:7
and !$1FED:7
and $1FED:7
eor $1FED:7
ldc $1FED:7
stc $1FED:7
not $1FED:7

ora (x)
orr (x)=(y)
ora ($FE,x)
ora ($FE),y
ora #$FE
orr $FE=#$DC
ora $FEDC,x
ora $FEDC,y
ora $FE,x
orr $FE=$DC
ora $FEDC
ora $FE

ora.w $FEDC,x
ora.b $FE,x
ora.w $FEDC
ora.b $FE

and (x)
and (x)=(y)
and ($FE,x)
and ($FE),y
and #$FE
and $FE=#$DC
and $FEDC,x
and $FEDC,y
and $FE,x
and $FE=$DC
and $FEDC
and $FE

and.w $FEDC,x
and.b $FE,x
and.w $FEDC
and.b $FE

eor (x)
eor (x)=(y)
eor ($FE,x)
eor ($FE),y
eor #$FE
eor $FE=#$DC
eor $FEDC,x
eor $FEDC,y
eor $FE,x
eor $FE=$DC
eor $FEDC
eor $FE

eor.w $FEDC,x
eor.b $FE,x
eor.w $FEDC
eor.b $FE

cmp (x)
cmp (x)=(y)
cmp ($FE,x)
cmp ($FE),y
cmp #$FE
cmp $FE=#$DC
cmp $FEDC,x
cmp $FEDC,y
cmp $FE,x
cmp $FE=$DC
cmp $FEDC
cmp $FE

cmp.w $FEDC,x
cmp.b $FE,x
cmp.w $FEDC
cmp.b $FE

adc (x)
adc (x)=(y)
adc ($FE,x)
adc ($FE),y
adc #$FE
adc $FE=#$DC
adc $FEDC,x
adc $FEDC,y
adc $FE,x
adc $FE=$DC
adc $FEDC
adc $FE

adc.w $FEDC,x
adc.b $FE,x
adc.w $FEDC
adc.b $FE

sbc (x)
sbc (x)=(y)
sbc ($FE,x)
sbc ($FE),y
sbc #$FE
sbc $FE=#$DC
sbc $FEDC,x
sbc $FEDC,y
sbc $FE,x
sbc $FE=$DC
sbc $FEDC
sbc $FE

sbc.w $FEDC,x
sbc.b $FE,x
sbc.w $FEDC
sbc.b $FE

sta (x)
sta (x++)
sta ($FE,x)
sta ($FE),y
str $FE=#$DC
sta $FEDC,x
sta $FEDC,y
sta $FE,x
str $FE=$DC
sta $FEDC
sta $FE

sta.w $FEDC,x
sta.b $FE,x
sta.w $FEDC
sta.b $FE

lda (x)
lda (x++)
lda ($FE,x)
lda ($FE),y
lda #$FE
lda $FEDC,x
lda $FEDC,y
lda $FE,x
lda $FEDC
lda $FE

lda.w $FEDC,x
lda.b $FE,x
lda.w $FEDC
lda.b $FE

stx $FE,y
stx $FEDC
stx $FE

stx.w $FEDC
stx.b $FE

sty $FE,x
sty $FEDC
sty $FE

sty.w $FEDC
sty.b $FE

ldx #$FE
ldx $FE,y
ldx $FEDC
ldx $FE

ldx.w $FEDC
ldx.b $FE

ldy #$FE
ldy $FE,x
ldy $FEDC
ldy $FE

ldy.w $FEDC
ldy.b $FE

cpx #$FE
cpx $FEDC
cpx $FE

cpx.w $FEDC
cpx.b $FE

cpy #$FE
cpy $FEDC
cpy $FE

cpy.w $FEDC
cpy.b $FE

asl
asl $FE,x
asl $FEDC
asl $FE

asl.w $FEDC
asl.b $FE

lsr
lsr $FE,x
lsr $FEDC
lsr $FE

lsr.w $FEDC
lsr.b $FE

rol
rol $FE,x
rol $FEDC
rol $FE

rol.w $FEDC
rol.b $FE

ror
ror $FE,x
ror $FEDC
ror $FE

ror.w $FEDC
ror.b $FE

inc
inc $FE,x
inc $FEDC
inc $FE

inc.w $FEDC
inc.b $FE

dec
dec $FE,x
dec $FEDC
dec $FE

dec.w $FEDC
dec.b $FE