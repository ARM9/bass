arch snes.cpu

// Super Famicom/SNES CPU:
asl
clc
cld
cli
clv
dec
dex
dey
inc
inx
iny
lsr
nop
pha
phb
phd
phk
php
phx
phy
pla
plb
pld
plp
plx
ply
rol
ror
rti
rtl
rts
sec
sed
sei
stp
tad
tas
tax
tay
tda
tsa
tsx
txa
txs
txy
tya
tyx
wai
xba
xce

tcd
tdc

asl #$FE
dec #$FE
dex #$FE
dey #$FE
inc #$FE
inx #$FE
iny #$FE
lsr #$FE
nop #$FE
rol #$FE
ror #$FE

ora #$FEDC
ora #$FE
ora $FE,s
ora ($FE,s),y
ora ($FE,x)
ora ($FE),y
ora [$FE],y
ora ($FE)
ora [$FE]
ora $FEDC,y
ora $FEDCBA,x
ora $FEDC,x
ora $FE,x
ora $FEDCBA
ora $FEDC
ora $FE

ora.w #$FEDC
ora.b #$FE
ora.l $FEDCBA,x
ora.w $FEDC,x
ora.b $FE,x
ora.l $FEDCBA
ora.w $FEDC
ora.b $FE

and #$FEDC
and #$FE
and $FE,s
and ($FE,s),y
and ($FE,x)
and ($FE),y
and [$FE],y
and ($FE)
and [$FE]
and $FEDC,y
and $FEDCBA,x
and $FEDC,x
and $FE,x
and $FEDCBA
and $FEDC
and $FE

and.w #$FEDC
and.b #$FE
and.l $FEDCBA,x
and.w $FEDC,x
and.b $FE,x
and.l $FEDCBA
and.w $FEDC
and.b $FE

eor #$FEDC
eor #$FE
eor $FE,s
eor ($FE,s),y
eor ($FE,x)
eor ($FE),y
eor [$FE],y
eor ($FE)
eor [$FE]
eor $FEDC,y
eor $FEDCBA,x
eor $FEDC,x
eor $FE,x
eor $FEDCBA
eor $FEDC
eor $FE

eor.w #$FEDC
eor.b #$FE
eor.l $FEDCBA,x
eor.w $FEDC,x
eor.b $FE,x
eor.l $FEDCBA
eor.w $FEDC
eor.b $FE

adc #$FEDC
adc #$FE
adc $FE,s
adc ($FE,s),y
adc ($FE,x)
adc ($FE),y
adc [$FE],y
adc ($FE)
adc [$FE]
adc $FEDC,y
adc $FEDCBA,x
adc $FEDC,x
adc $FE,x
adc $FEDCBA
adc $FEDC
adc $FE

adc.w #$FEDC
adc.b #$FE
adc.l $FEDCBA,x
adc.w $FEDC,x
adc.b $FE,x
adc.l $FEDCBA
adc.w $FEDC
adc.b $FE

sta $FE,s
sta ($FE,s),y
sta ($FE,x)
sta ($FE),y
sta [$FE],y
sta ($FE)
sta [$FE]
sta $FEDC,y
sta $FEDCBA,x
sta $FEDC,x
sta $FE,x
sta $FEDCBA
sta $FEDC
sta $FE

sta.l $FEDCBA,x
sta.w $FEDC,x
sta.b $FE,x
sta.l $FEDCBA
sta.w $FEDC
sta.b $FE

lda #$FEDC
lda #$FE
lda $FE,s
lda ($FE,s),y
lda ($FE,x)
lda ($FE),y
lda [$FE],y
lda ($FE)
lda [$FE]
lda $FEDC,y
lda $FEDCBA,x
lda $FEDC,x
lda $FE,x
lda $FEDCBA
lda $FEDC
lda $FE

lda.w #$FEDC
lda.b #$FE
lda.l $FEDCBA,x
lda.w $FEDC,x
lda.b $FE,x
lda.l $FEDCBA
lda.w $FEDC
lda.b $FE

cmp #$FEDC
cmp #$FE
cmp $FE,s
cmp ($FE,s),y
cmp ($FE,x)
cmp ($FE),y
cmp [$FE],y
cmp ($FE)
cmp [$FE]
cmp $FEDC,y
cmp $FEDCBA,x
cmp $FEDC,x
cmp $FE,x
cmp $FEDCBA
cmp $FEDC
cmp $FE

cmp.w #$FEDC
cmp.b #$FE
cmp.l $FEDCBA,x
cmp.w $FEDC,x
cmp.b $FE,x
cmp.l $FEDCBA
cmp.w $FEDC
cmp.b $FE

sbc #$FEDC
sbc #$FE
sbc $FE,s
sbc ($FE,s),y
sbc ($FE,x)
sbc ($FE),y
sbc [$FE],y
sbc ($FE)
sbc [$FE]
sbc $FEDC,y
sbc $FEDCBA,x
sbc $FEDC,x
sbc $FE,x
sbc $FEDCBA
sbc $FEDC
sbc $FE

sbc.w #$FEDC
sbc.b #$FE
sbc.l $FEDCBA,x
sbc.w $FEDC,x
sbc.b $FE,x
sbc.l $FEDCBA
sbc.w $FEDC
sbc.b $FE

asl $FEDC,x
asl $FE,x
asl $FEDC
asl $FE

asl.w $FEDC,x
asl.b $FE,x
asl.w $FEDC
asl.b $FE

lsr $FEDC,x
lsr $FE,x
lsr $FEDC
lsr $FE

lsr.w $FEDC,x
lsr.b $FE,x
lsr.w $FEDC
lsr.b $FE

rol $FEDC,x
rol $FE,x
rol $FEDC
rol $FE

rol.w $FEDC,x
rol.b $FE,x
rol.w $FEDC
rol.b $FE

ror $FEDC,x
ror $FE,x
ror $FEDC
ror $FE

ror.w $FEDC,x
ror.b $FE,x
ror.w $FEDC
ror.b $FE

inc $FEDC,x
inc $FE,x
inc $FEDC
inc $FE

inc.w $FEDC,x
inc.b $FE,x
inc.w $FEDC
inc.b $FE

dec $FEDC,x
dec $FE,x
dec $FEDC
dec $FE

dec.w $FEDC,x
dec.b $FE,x
dec.w $FEDC
dec.b $FE

bit #$FEDC
bit #$FE
bit $FEDC,x
bit $FE,x
bit $FEDC
bit $FE

bit.w #$FEDC
bit.b #$FE
bit.w $FEDC,x
bit.b $FE,x
bit.w $FEDC
bit.b $FE

cpx #$FEDC
cpx #$FE
cpx $FEDC
cpx $FE

cpx.w #$FEDC
cpx.b #$FE
cpx.w $FEDC
cpx.b $FE

cpy #$FEDC
cpy #$FE
cpy $FEDC
cpy $FE

cpy.w #$FEDC
cpy.b #$FE
cpy.w $FEDC
cpy.b $FE

ldx #$FEDC
ldx #$FE
ldx $FEDC,y
ldx $FE,y
ldx $FEDC
ldx $FE

ldx.w #$FEDC
ldx.b #$FE
ldx.w $FEDC,y
ldx.b $FE,y
ldx.w $FEDC
ldx.b $FE

ldy #$FEDC
ldy #$FE
ldy $FEDC,x
ldy $FE,x
ldy $FEDC
ldy $FE

ldy.w #$FEDC
ldy.b #$FE
ldy.w $FEDC,x
ldy.b $FE,x
ldy.w $FEDC
ldy.b $FE

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

stz $FEDC,x
stz $FE,x
stz $FEDC
stz $FE

stz.w $FEDC,x
stz.b $FE,x
stz.w $FEDC
stz.b $FE

trb $FEDC
trb $FE

trb.w $FEDC
trb.b $FE

tsb $FEDC
tsb $FE

tsb.w $FEDC
tsb.b $FE

jmp (JMPINDIND,x)
jmp (JMPIND)
JMPINDIND:
jmp [JMPABSIND]
JMPIND:
jmp JMPABS
JMPABSIND:
jml JMLLONG
JMPABS:

jsr (JSRINDIND,x)
JMLLONG:
jsr JSRABS
JSRINDIND:
jsl JSLLONG
JSRABS:

brl BRLREL
JSLLONG:
bra BRAREL
BRLREL:
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

mvp $FE=$DC
BEQREL:
mvn $FE=$DC

pea $FEDC
pei ($FE)
per $FEDC

rep #$FE
sep #$FE

brk #$FE
cop #$FE
wdm #$FE