arch nes.cpu

// Famicom/NES WDC6502 without decimal flag ("cld" & "sed" run as NOP)
asl
clc
cld
cli
clv
dex
dey
inx
iny
lsr
nop
pha
php
pla
plp
rol
ror
rti
rts
sec
sed
sei
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
ora $FEDC,y
ora $FEDC,x
ora $FE,x
ora $FEDC
ora $FE
//
ora.w $FEDC,x
ora.b $FE,x
ora.w $FEDC
ora.b $FE

and #$FE
and ($FE,x)
and ($FE),y
and $FEDC,y
and $FEDC,x
and $FE,x
and $FEDC
and $FE
//
and.w $FEDC,x
and.b $FE,x
and.w $FEDC
and.b $FE

eor #$FE
eor ($FE,x)
eor ($FE),y
eor $FEDC,y
eor $FEDC,x
eor $FE,x
eor $FEDC
eor $FE
//
eor.w $FEDC,x
eor.b $FE,x
eor.w $FEDC
eor.b $FE

adc #$FE
adc ($FE,x)
adc ($FE),y
adc $FEDC,y
adc $FEDC,x
adc $FE,x
adc $FEDC
adc $FE
//
adc.w $FEDC,x
adc.b $FE,x
adc.w $FEDC
adc.b $FE

sta ($FE,x)
sta ($FE),y
sta $FEDC,y
sta $FEDC,x
sta $FE,x
sta $FEDC
sta $FE
//
sta.w $FEDC,x
sta.b $FE,x
sta.w $FEDC
sta.b $FE

lda #$FE
lda ($FE,x)
lda ($FE),y
lda $FEDC,y
lda $FEDC,x
lda $FE,x
lda $FEDC
lda $FE
//
lda.w $FEDC,x
lda.b $FE,x
lda.w $FEDC
lda.b $FE

cmp #$FE
cmp ($FE,x)
cmp ($FE),y
cmp $FEDC,y
cmp $FEDC,x
cmp $FE,x
cmp $FEDC
cmp $FE
//
cmp.w $FEDC,x
cmp.b $FE,x
cmp.w $FEDC
cmp.b $FE

sbc #$FE
sbc ($FE,x)
sbc ($FE),y
sbc $FEDC,y
sbc $FEDC,x
sbc $FE,x
sbc $FEDC
sbc $FE
//
sbc.w $FEDC,x
sbc.b $FE,x
sbc.w $FEDC
sbc.b $FE

asl $FEDC,x
asl $FE,x
asl $FEDC
asl $FE
//
asl.w $FEDC,x
asl.b $FE,x
asl.w $FEDC
asl.b $FE

lsr $FEDC,x
lsr $FE,x
lsr $FEDC
lsr $FE
//
lsr.w $FEDC,x
lsr.b $FE,x
lsr.w $FEDC
lsr.b $FE

rol $FEDC,x
rol $FE,x
rol $FEDC
rol $FE
//
rol.w $FEDC,x
rol.b $FE,x
rol.w $FEDC
rol.b $FE

ror $FEDC,x
ror $FE,x
ror $FEDC
ror $FE
//
ror.w $FEDC,x
ror.b $FE,x
ror.w $FEDC
ror.b $FE

inc $FEDC,x
inc $FE,x
inc $FEDC
inc $FE
//
inc.w $FEDC,x
inc.b $FE,x
inc.w $FEDC
inc.b $FE

dec $FEDC,x
dec $FE,x
dec $FEDC
dec $FE
//
dec.w $FEDC,x
dec.b $FE,x
dec.w $FEDC
dec.b $FE

bit $FEDC
bit $FE
//
bit.w $FEDC
bit.b $FE

cpx #$FE
cpx $FEDC
cpx $FE
//
cpx.w $FEDC
cpx.b $FE

cpy #$FE
cpy $FEDC
cpy $FE
//
cpy.w $FEDC
cpy.b $FE

ldx #$FE
ldx $FEDC,y
ldx $FE,y
ldx $FEDC
ldx $FE
//
ldx.w $FEDC,y
ldx.b $FE,y
ldx.w $FEDC
ldx.b $FE

ldy #$FE
ldy $FEDC,x
ldy $FE,x
ldy $FEDC
ldy $FE
//
ldy.w $FEDC,x
ldy.b $FE,x
ldy.w $FEDC
ldy.b $FE

stx $FE,y
stx $FEDC
stx $FE
//
stx.w $FEDC
stx.b $FE

sty $FE,x
sty $FEDC
sty $FE
//
sty.w $FEDC
sty.b $FE

jmp (JMPIND)
jmp JMPABS
JMPIND:

jsr JSRABS
JMPABS:

bpl BPLREL
JSRABS:
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

brk #$FE
BEQREL: