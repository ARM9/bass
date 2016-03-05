arch nes.cpu

// Famicom/NES CPU:
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

and #$FE
and ($FE,x)
and ($FE),y
and $FEDC,y
and $FEDC,x
and $FE,x
and $FEDC
and $FE

eor #$FE
eor ($FE,x)
eor ($FE),y
eor $FEDC,y
eor $FEDC,x
eor $FE,x
eor $FEDC
eor $FE

adc #$FE
adc ($FE,x)
adc ($FE),y
adc $FEDC,y
adc $FEDC,x
adc $FE,x
adc $FEDC
adc $FE

sta ($FE,x)
sta ($FE),y
sta $FEDC,y
sta $FEDC,x
sta $FE,x
sta $FEDC
sta $FE

lda #$FE
lda ($FE,x)
lda ($FE),y
lda $FEDC,y
lda $FEDC,x
lda $FE,x
lda $FEDC
lda $FE

cmp #$FE
cmp ($FE,x)
cmp ($FE),y
cmp $FEDC,y
cmp $FEDC,x
cmp $FE,x
cmp $FEDC
cmp $FE

sbc #$FE
sbc ($FE,x)
sbc ($FE),y
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