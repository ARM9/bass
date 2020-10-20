arch md.cpu
endian msb

// Mega Drive Motorola 68000
swap    d7
swap.w  d7


illegal


trap #$F

trapv


reset


nop


stop    #$1234


rte

rts

rtr


link    a7,#$FEDC

unlk    a7


exg     d7,d6
exg.l   d7,d6

exg     a7,a6
exg.l   a7,a6

exg     d7,a6
exg.l   d7,a6


ext     d7
ext.w   d7
ext.l   d7


BCC:
bcc     BCC
bcc.b   BCC
bcc.w   BCC

bcs     BCC
bcs.b   BCC
bcs.w   BCC

beq     BCC
beq.b   BCC
beq.w   BCC

bge     BCC
bge.b   BCC
bge.w   BCC

bgt     BCC
bgt.b   BCC
bgt.w   BCC

bhi     BCC
bhi.b   BCC
bhi.w   BCC

ble     BCC
ble.b   BCC
ble.w   BCC

bls     BCC
bls.b   BCC
bls.w   BCC

blt     BCC
blt.b   BCC
blt.w   BCC

bmi     BCC
bmi.b   BCC
bmi.w   BCC

bne     BCC
bne.b   BCC
bne.w   BCC

bpl     BCC
bpl.b   BCC
bpl.w   BCC

bvc     BCC
bvc.b   BCC
bvc.w   BCC

bvs     BCC
bvs.b   BCC
bvs.w   BCC

bra     BCC
bra.b   BCC
bra.w   BCC

bsr     BCC
bsr.b   BCC
bsr.w   BCC


DBCC:
dbcc    d7,DBCC
dbcc.w  d7,DBCC

dbcs    d7,DBCC
dbcs.w  d7,DBCC

dbeq    d7,DBCC
dbeq.w  d7,DBCC

dbf     d7,DBCC
dbra    d7,DBCC
dbf.w   d7,DBCC
dbra.w  d7,DBCC

dbge    d7,DBCC
dbge.w  d7,DBCC

dbgt    d7,DBCC
dbgt.w  d7,DBCC

dbhi    d7,DBCC
dbhi.w  d7,DBCC

dble    d7,DBCC
dble.w  d7,DBCC

dbls    d7,DBCC
dbls.w  d7,DBCC

dblt    d7,DBCC
dblt.w  d7,DBCC

dbmi    d7,DBCC
dbmi.w  d7,DBCC

dbne    d7,DBCC
dbne.w  d7,DBCC

dbpl    d7,DBCC
dbpl.w  d7,DBCC

dbt     d7,DBCC
dbt.w   d7,DBCC

dbvc    d7,DBCC
dbvc.w  d7,DBCC

dbvs    d7,DBCC
dbvs.w  d7,DBCC


scc     ($12345678).l
scc.b   ($12345678).l

scs     ($12345678).l
scs.b   ($12345678).l

seq     ($12345678).l
seq.b   ($12345678).l

sf      ($12345678).l
sf.b    ($12345678).l

sge     ($12345678).l
sge.b   ($12345678).l

sgt     ($12345678).l
sgt.b   ($12345678).l

shi     ($12345678).l
shi.b   ($12345678).l

sle     ($12345678).l
sle.b   ($12345678).l

sls     ($12345678).l
sls.b   ($12345678).l

slt     ($12345678).l
slt.b   ($12345678).l

smi     ($12345678).l
smi.b   ($12345678).l

sne     ($12345678).l
sne.b   ($12345678).l

spl     ($12345678).l
spl.b   ($12345678).l

st      ($12345678).l
st.b    ($12345678).l

svc     ($12345678).l
svc.b   ($12345678).l

svs     ($12345678).l
svs.b   ($12345678).l


scc     ($1234).w
scc.b   ($1234).w

scs     ($1234).w
scs.b   ($1234).w

seq     ($1234).w
seq.b   ($1234).w

sf      ($1234).w
sf.b    ($1234).w

sge     ($1234).w
sge.b   ($1234).w

sgt     ($1234).w
sgt.b   ($1234).w

shi     ($1234).w
shi.b   ($1234).w

sle     ($1234).w
sle.b   ($1234).w

sls     ($1234).w
sls.b   ($1234).w

slt     ($1234).w
slt.b   ($1234).w

smi     ($1234).w
smi.b   ($1234).w

sne     ($1234).w
sne.b   ($1234).w

spl     ($1234).w
spl.b   ($1234).w

st      ($1234).w
st.b    ($1234).w

svc     ($1234).w
svc.b   ($1234).w

svs     ($1234).w
svs.b   ($1234).w


scc     (a7)
scc.b   (a7)

scs     (a7)
scs.b   (a7)

seq     (a7)
seq.b   (a7)

sf      (a7)
sf.b    (a7)

sge     (a7)
sge.b   (a7)

sgt     (a7)
sgt.b   (a7)

shi     (a7)
shi.b   (a7)

sle     (a7)
sle.b   (a7)

sls     (a7)
sls.b   (a7)

slt     (a7)
slt.b   (a7)

smi     (a7)
smi.b   (a7)

sne     (a7)
sne.b   (a7)

spl     (a7)
spl.b   (a7)

st      (a7)
st.b    (a7)

svc     (a7)
svc.b   (a7)

svs     (a7)
svs.b   (a7)


scc     (a7)+
scc.b   (a7)+

scs     (a7)+
scs.b   (a7)+

seq     (a7)+
seq.b   (a7)+

sf      (a7)+
sf.b    (a7)+

sge     (a7)+
sge.b   (a7)+

sgt     (a7)+
sgt.b   (a7)+

shi     (a7)+
shi.b   (a7)+

sle     (a7)+
sle.b   (a7)+

sls     (a7)+
sls.b   (a7)+

slt     (a7)+
slt.b   (a7)+

smi     (a7)+
smi.b   (a7)+

sne     (a7)+
sne.b   (a7)+

spl     (a7)+
spl.b   (a7)+

st      (a7)+
st.b    (a7)+

svc     (a7)+
svc.b   (a7)+

svs     (a7)+
svs.b   (a7)+


scc     -(a7)
scc.b   -(a7)

scs     -(a7)
scs.b   -(a7)

seq     -(a7)
seq.b   -(a7)

sf      -(a7)
sf.b    -(a7)

sge     -(a7)
sge.b   -(a7)

sgt     -(a7)
sgt.b   -(a7)

shi     -(a7)
shi.b   -(a7)

sle     -(a7)
sle.b   -(a7)

sls     -(a7)
sls.b   -(a7)

slt     -(a7)
slt.b   -(a7)

smi     -(a7)
smi.b   -(a7)

sne     -(a7)
sne.b   -(a7)

spl     -(a7)
spl.b   -(a7)

st      -(a7)
st.b    -(a7)

svc     -(a7)
svc.b   -(a7)

svs     -(a7)
svs.b   -(a7)


scc     $12(a7,d6.l)
scc     ($12,a7,d6.l)
scc.b   $12(a7,d6.l)
scc.b   ($12,a7,d6.l)

scs     $12(a7,d6.l)
scs     ($12,a7,d6.l)
scs.b   $12(a7,d6.l)
scs.b   ($12,a7,d6.l)

seq     $12(a7,d6.l)
seq     ($12,a7,d6.l)
seq.b   $12(a7,d6.l)
seq.b   ($12,a7,d6.l)

sf      $12(a7,d6.l)
sf      ($12,a7,d6.l)
sf.b    $12(a7,d6.l)
sf.b    ($12,a7,d6.l)

sge     $12(a7,d6.l)
sge     ($12,a7,d6.l)
sge.b   $12(a7,d6.l)
sge.b   ($12,a7,d6.l)

sgt     $12(a7,d6.l)
sgt     ($12,a7,d6.l)
sgt.b   $12(a7,d6.l)
sgt.b   ($12,a7,d6.l)

shi     $12(a7,d6.l)
shi     ($12,a7,d6.l)
shi.b   $12(a7,d6.l)
shi.b   ($12,a7,d6.l)

sle     $12(a7,d6.l)
sle     ($12,a7,d6.l)
sle.b   $12(a7,d6.l)
sle.b   ($12,a7,d6.l)

sls     $12(a7,d6.l)
sls     ($12,a7,d6.l)
sls.b   $12(a7,d6.l)
sls.b   ($12,a7,d6.l)

slt     $12(a7,d6.l)
slt     ($12,a7,d6.l)
slt.b   $12(a7,d6.l)
slt.b   ($12,a7,d6.l)

smi     $12(a7,d6.l)
smi     ($12,a7,d6.l)
smi.b   $12(a7,d6.l)
smi.b   ($12,a7,d6.l)

sne     $12(a7,d6.l)
sne     ($12,a7,d6.l)
sne.b   $12(a7,d6.l)
sne.b   ($12,a7,d6.l)

spl     $12(a7,d6.l)
spl     ($12,a7,d6.l)
spl.b   $12(a7,d6.l)
spl.b   ($12,a7,d6.l)

st      $12(a7,d6.l)
st      ($12,a7,d6.l)
st.b    $12(a7,d6.l)
st.b    ($12,a7,d6.l)

svc     $12(a7,d6.l)
svc     ($12,a7,d6.l)
svc.b   $12(a7,d6.l)
svc.b   ($12,a7,d6.l)

svs     $12(a7,d6.l)
svs     ($12,a7,d6.l)
svs.b   $12(a7,d6.l)
svs.b   ($12,a7,d6.l)


scc     $12(a7,d6.w)
scc     ($12,a7,d6.w)
scc.b   $12(a7,d6.w)
scc.b   ($12,a7,d6.w)

scs     $12(a7,d6.w)
scs     ($12,a7,d6.w)
scs.b   $12(a7,d6.w)
scs.b   ($12,a7,d6.w)

seq     $12(a7,d6.w)
seq     ($12,a7,d6.w)
seq.b   $12(a7,d6.w)
seq.b   ($12,a7,d6.w)

sf      $12(a7,d6.w)
sf      ($12,a7,d6.w)
sf.b    $12(a7,d6.w)
sf.b    ($12,a7,d6.w)

sge     $12(a7,d6.w)
sge     ($12,a7,d6.w)
sge.b   $12(a7,d6.w)
sge.b   ($12,a7,d6.w)

sgt     $12(a7,d6.w)
sgt     ($12,a7,d6.w)
sgt.b   $12(a7,d6.w)
sgt.b   ($12,a7,d6.w)

shi     $12(a7,d6.w)
shi     ($12,a7,d6.w)
shi.b   $12(a7,d6.w)
shi.b   ($12,a7,d6.w)

sle     $12(a7,d6.w)
sle     ($12,a7,d6.w)
sle.b   $12(a7,d6.w)
sle.b   ($12,a7,d6.w)

sls     $12(a7,d6.w)
sls     ($12,a7,d6.w)
sls.b   $12(a7,d6.w)
sls.b   ($12,a7,d6.w)

slt     $12(a7,d6.w)
slt     ($12,a7,d6.w)
slt.b   $12(a7,d6.w)
slt.b   ($12,a7,d6.w)

smi     $12(a7,d6.w)
smi     ($12,a7,d6.w)
smi.b   $12(a7,d6.w)
smi.b   ($12,a7,d6.w)

sne     $12(a7,d6.w)
sne     ($12,a7,d6.w)
sne.b   $12(a7,d6.w)
sne.b   ($12,a7,d6.w)

spl     $12(a7,d6.w)
spl     ($12,a7,d6.w)
spl.b   $12(a7,d6.w)
spl.b   ($12,a7,d6.w)

st      $12(a7,d6.w)
st      ($12,a7,d6.w)
st.b    $12(a7,d6.w)
st.b    ($12,a7,d6.w)

svc     $12(a7,d6.w)
svc     ($12,a7,d6.w)
svc.b   $12(a7,d6.w)
svc.b   ($12,a7,d6.w)

svs     $12(a7,d6.w)
svs     ($12,a7,d6.w)
svs.b   $12(a7,d6.w)
svs.b   ($12,a7,d6.w)


scc     $12(a7,d6)
scc     ($12,a7,d6)
scc.b   $12(a7,d6)
scc.b   ($12,a7,d6)

scs     $12(a7,d6)
scs     ($12,a7,d6)
scs.b   $12(a7,d6)
scs.b   ($12,a7,d6)

seq     $12(a7,d6)
seq     ($12,a7,d6)
seq.b   $12(a7,d6)
seq.b   ($12,a7,d6)

sf      $12(a7,d6)
sf      ($12,a7,d6)
sf.b    $12(a7,d6)
sf.b    ($12,a7,d6)

sge     $12(a7,d6)
sge     ($12,a7,d6)
sge.b   $12(a7,d6)
sge.b   ($12,a7,d6)

sgt     $12(a7,d6)
sgt     ($12,a7,d6)
sgt.b   $12(a7,d6)
sgt.b   ($12,a7,d6)

shi     $12(a7,d6)
shi     ($12,a7,d6)
shi.b   $12(a7,d6)
shi.b   ($12,a7,d6)

sle     $12(a7,d6)
sle     ($12,a7,d6)
sle.b   $12(a7,d6)
sle.b   ($12,a7,d6)

sls     $12(a7,d6)
sls     ($12,a7,d6)
sls.b   $12(a7,d6)
sls.b   ($12,a7,d6)

slt     $12(a7,d6)
slt     ($12,a7,d6)
slt.b   $12(a7,d6)
slt.b   ($12,a7,d6)

smi     $12(a7,d6)
smi     ($12,a7,d6)
smi.b   $12(a7,d6)
smi.b   ($12,a7,d6)

sne     $12(a7,d6)
sne     ($12,a7,d6)
sne.b   $12(a7,d6)
sne.b   ($12,a7,d6)

spl     $12(a7,d6)
spl     ($12,a7,d6)
spl.b   $12(a7,d6)
spl.b   ($12,a7,d6)

st      $12(a7,d6)
st      ($12,a7,d6)
st.b    $12(a7,d6)
st.b    ($12,a7,d6)

svc     $12(a7,d6)
svc     ($12,a7,d6)
svc.b   $12(a7,d6)
svc.b   ($12,a7,d6)

svs     $12(a7,d6)
svs     ($12,a7,d6)
svs.b   $12(a7,d6)
svs.b   ($12,a7,d6)


scc     $1234(a7)
scc     ($1234,a7)
scc.b   $1234(a7)
scc.b   ($1234,a7)

scs     $1234(a7)
scs     ($1234,a7)
scs.b   $1234(a7)
scs.b   ($1234,a7)

seq     $1234(a7)
seq     ($1234,a7)
seq.b   $1234(a7)
seq.b   ($1234,a7)

sf      $1234(a7)
sf      ($1234,a7)
sf.b    $1234(a7)
sf.b    ($1234,a7)

sge     $1234(a7)
sge     ($1234,a7)
sge.b   $1234(a7)
sge.b   ($1234,a7)

sgt     $1234(a7)
sgt     ($1234,a7)
sgt.b   $1234(a7)
sgt.b   ($1234,a7)

shi     $1234(a7)
shi     ($1234,a7)
shi.b   $1234(a7)
shi.b   ($1234,a7)

sle     $1234(a7)
sle     ($1234,a7)
sle.b   $1234(a7)
sle.b   ($1234,a7)

sls     $1234(a7)
sls     ($1234,a7)
sls.b   $1234(a7)
sls.b   ($1234,a7)

slt     $1234(a7)
slt     ($1234,a7)
slt.b   $1234(a7)
slt.b   ($1234,a7)

smi     $1234(a7)
smi     ($1234,a7)
smi.b   $1234(a7)
smi.b   ($1234,a7)

sne     $1234(a7)
sne     ($1234,a7)
sne.b   $1234(a7)
sne.b   ($1234,a7)

spl     $1234(a7)
spl     ($1234,a7)
spl.b   $1234(a7)
spl.b   ($1234,a7)

st      $1234(a7)
st      ($1234,a7)
st.b    $1234(a7)
st.b    ($1234,a7)

svc     $1234(a7)
svc     ($1234,a7)
svc.b   $1234(a7)
svc.b   ($1234,a7)

svs     $1234(a7)
svs     ($1234,a7)
svs.b   $1234(a7)
svs.b   ($1234,a7)


scc     d7
scc.b   d7

scs     d7
scs.b   d7

seq     d7
seq.b   d7

sf      d7
sf.b    d7

sge     d7
sge.b   d7

sgt     d7
sgt.b   d7

shi     d7
shi.b   d7

sle     d7
sle.b   d7

sls     d7
sls.b   d7

slt     d7
slt.b   d7

smi     d7
smi.b   d7

sne     d7
sne.b   d7

spl     d7
spl.b   d7

st      d7
st.b    d7

svc     d7
svc.b   d7

svs     d7
svs.b   d7


scc     $1234.w
scc.b   $1234.w

scs     $1234.w
scs.b   $1234.w

seq     $1234.w
seq.b   $1234.w

sf      $1234.w
sf.b    $1234.w

sge     $1234.w
sge.b   $1234.w

sgt     $1234.w
sgt.b   $1234.w

shi     $1234.w
shi.b   $1234.w

sle     $1234.w
sle.b   $1234.w

sls     $1234.w
sls.b   $1234.w

slt     $1234.w
slt.b   $1234.w

smi     $1234.w
smi.b   $1234.w

sne     $1234.w
sne.b   $1234.w

spl     $1234.w
spl.b   $1234.w

st      $1234.w
st.b    $1234.w

svc     $1234.w
svc.b   $1234.w

svs     $1234.w
svs.b   $1234.w


scc     $12345678.l
scc.b   $12345678.l

scs     $12345678.l
scs.b   $12345678.l

seq     $12345678.l
seq.b   $12345678.l

sf      $12345678.l
sf.b    $12345678.l

sge     $12345678.l
sge.b   $12345678.l

sgt     $12345678.l
sgt.b   $12345678.l

shi     $12345678.l
shi.b   $12345678.l

sle     $12345678.l
sle.b   $12345678.l

sls     $12345678.l
sls.b   $12345678.l

slt     $12345678.l
slt.b   $12345678.l

smi     $12345678.l
smi.b   $12345678.l

sne     $12345678.l
sne.b   $12345678.l

spl     $12345678.l
spl.b   $12345678.l

st      $12345678.l
st.b    $12345678.l

svc     $12345678.l
svc.b   $12345678.l

svs     $12345678.l
svs.b   $12345678.l


scc     $12345678
scc.b   $12345678

scs     $12345678
scs.b   $12345678

seq     $12345678
seq.b   $12345678

sf      $12345678
sf.b    $12345678

sge     $12345678
sge.b   $12345678

sgt     $12345678
sgt.b   $12345678

shi     $12345678
shi.b   $12345678

sle     $12345678
sle.b   $12345678

sls     $12345678
sls.b   $12345678

slt     $12345678
slt.b   $12345678

smi     $12345678
smi.b   $12345678

sne     $12345678
sne.b   $12345678

spl     $12345678
spl.b   $12345678

st      $12345678
st.b    $12345678

svc     $12345678
svc.b   $12345678

svs     $12345678
svs.b   $12345678


jmp     ($12345678).l

jmp     ($1234).w

jmp     (a7)

jmp     $12(a7,d6.l)
jmp     ($12,a7,d6.l)

jmp     $12(a7,d6.w)
jmp     ($12,a7,d6.w)

jmp     $12(a7,d6)
jmp     ($12,a7,d6)

jmp     $1234(a7)
jmp     ($1234,a7)

JMPPC:
jmp     JMPPC(pc,d7.l)
jmp     (JMPPC,pc,d7.l)

jmp     JMPPC(pc,d7.w)
jmp     (JMPPC,pc,d7.w)

jmp     JMPPC(pc,d7)
jmp     (JMPPC,pc,d7)

jmp     $1234(pc)
jmp     ($1234,pc)

jmp     $1234.w
jmp     $12345678.l
jmp     $12345678


jsr     ($12345678).l

jsr     ($1234).w

jsr     (a7)

jsr     $12(a7,d6.l)
jsr     ($12,a7,d6.l)

jsr     $12(a7,d6.w)
jsr     ($12,a7,d6.w)

jsr     $12(a7,d6)
jsr     ($12,a7,d6)

jsr     $1234(a7)
jsr     ($1234,a7)

JSRPC:
jsr     JSRPC(pc,d7.l)
jsr     (JSRPC,pc,d7.l)

jsr     JSRPC(pc,d7.w)
jsr     (JSRPC,pc,d7.w)

jsr     JSRPC(pc,d7)
jsr     (JSRPC,pc,d7)

jsr     $1234(pc)
jsr     ($1234,pc)

jsr     $1234.w
jsr     $12345678.l
jsr     $12345678


nbcd    ($12345678).l
nbcd.b  ($12345678).l

nbcd    ($1234).w
nbcd.b  ($1234).w

nbcd    (a7)
nbcd.b  (a7)

nbcd    (a7)+
nbcd.b  (a7)+

nbcd    -(a7)
nbcd.b  -(a7)

nbcd    $12(a7,d6.l)
nbcd    ($12,a7,d6.l)
nbcd.b  $12(a7,d6.l)
nbcd.b  ($12,a7,d6.l)

nbcd    $12(a7,d6.w)
nbcd    ($12,a7,d6.w)
nbcd.b  $12(a7,d6.w)
nbcd.b  ($12,a7,d6.w)

nbcd    $12(a7,d6)
nbcd    ($12,a7,d6)
nbcd.b  $12(a7,d6)
nbcd.b  ($12,a7,d6)

nbcd    $1234(a7)
nbcd    ($1234,a7)
nbcd.b  $1234(a7)
nbcd.b  ($1234,a7)

nbcd    d7
nbcd.b  d7

nbcd    $1234.w
nbcd.b  $1234.w

nbcd    $12345678.l
nbcd.b  $12345678.l

nbcd    $12345678
nbcd.b  $12345678


tas     ($12345678).l
tas.b   ($12345678).l

tas     ($1234).w
tas.b   ($1234).w

tas     (a7)
tas.b   (a7)

tas     (a7)+
tas.b   (a7)+

tas     -(a7)
tas.b   -(a7)

tas     $12(a7,d6.l)
tas     ($12,a7,d6.l)
tas.b   $12(a7,d6.l)
tas.b   ($12,a7,d6.l)

tas     $12(a7,d6.w)
tas     ($12,a7,d6.w)
tas.b   $12(a7,d6.w)
tas.b   ($12,a7,d6.w)

tas     $12(a7,d6)
tas     ($12,a7,d6)
tas.b   $12(a7,d6)
tas.b   ($12,a7,d6)

tas     $1234(a7)
tas     ($1234,a7)
tas.b   $1234(a7)
tas.b   ($1234,a7)

tas     d7
tas.b   d7

tas     $1234.w
tas.b   $1234.w

tas     $12345678.l
tas.b   $12345678.l

tas     $12345678
tas.b   $12345678


neg     ($12345678).l
neg.b   ($12345678).l
neg.w   ($12345678).l
neg.l   ($12345678).l

neg     ($1234).w
neg.b   ($1234).w
neg.w   ($1234).w
neg.l   ($1234).w

neg     (a7)
neg.b   (a7)
neg.w   (a7)
neg.l   (a7)

neg     (a7)+
neg.b   (a7)+
neg.w   (a7)+
neg.l   (a7)+

neg     -(a7)
neg.b   -(a7)
neg.w   -(a7)
neg.l   -(a7)

neg     $12(a7,d6.l)
neg     ($12,a7,d6.l)
neg.b   $12(a7,d6.l)
neg.b   ($12,a7,d6.l)
neg.w   $12(a7,d6.l)
neg.w   ($12,a7,d6.l)
neg.l   $12(a7,d6.l)
neg.l   ($12,a7,d6.l)

neg     $12(a7,d6.w)
neg     ($12,a7,d6.w)
neg.b   $12(a7,d6.w)
neg.b   ($12,a7,d6.w)
neg.w   $12(a7,d6.w)
neg.w   ($12,a7,d6.w)
neg.l   $12(a7,d6.w)
neg.l   ($12,a7,d6.w)

neg     $12(a7,d6)
neg     ($12,a7,d6)
neg.b   $12(a7,d6)
neg.b   ($12,a7,d6)
neg.w   $12(a7,d6)
neg.w   ($12,a7,d6)
neg.l   $12(a7,d6)
neg.l   ($12,a7,d6)

neg     $1234(a7)
neg     ($1234,a7)
neg.b   $1234(a7)
neg.b   ($1234,a7)
neg.w   $1234(a7)
neg.w   ($1234,a7)
neg.l   $1234(a7)
neg.l   ($1234,a7)

neg     d7
neg.b   d7
neg.w   d7
neg.l   d7

neg     $1234.w
neg.b   $1234.w
neg.w   $1234.w
neg.l   $1234.w

neg     $12345678.l
neg.b   $12345678.l
neg.w   $12345678.l
neg.l   $12345678.l

neg     $12345678
neg.b   $12345678
neg.w   $12345678
neg.l   $12345678


negx    ($12345678).l
negx.b  ($12345678).l
negx.w  ($12345678).l
negx.l  ($12345678).l

negx    ($1234).w
negx.b  ($1234).w
negx.w  ($1234).w
negx.l  ($1234).w

negx    (a7)
negx.b  (a7)
negx.w  (a7)
negx.l  (a7)

negx    (a7)+
negx.b  (a7)+
negx.w  (a7)+
negx.l  (a7)+

negx    -(a7)
negx.b  -(a7)
negx.w  -(a7)
negx.l  -(a7)

negx    $12(a7,d6.l)
negx    ($12,a7,d6.l)
negx.b  $12(a7,d6.l)
negx.b  ($12,a7,d6.l)
negx.w  $12(a7,d6.l)
negx.w  ($12,a7,d6.l)
negx.l  $12(a7,d6.l)
negx.l  ($12,a7,d6.l)

negx    $12(a7,d6.w)
negx    ($12,a7,d6.w)
negx.b  $12(a7,d6.w)
negx.b  ($12,a7,d6.w)
negx.w  $12(a7,d6.w)
negx.w  ($12,a7,d6.w)
negx.l  $12(a7,d6.w)
negx.l  ($12,a7,d6.w)

negx    $12(a7,d6)
negx    ($12,a7,d6)
negx.b  $12(a7,d6)
negx.b  ($12,a7,d6)
negx.w  $12(a7,d6)
negx.w  ($12,a7,d6)
negx.l  $12(a7,d6)
negx.l  ($12,a7,d6)

negx    $1234(a7)
negx    ($1234,a7)
negx.b  $1234(a7)
negx.b  ($1234,a7)
negx.w  $1234(a7)
negx.w  ($1234,a7)
negx.l  $1234(a7)
negx.l  ($1234,a7)

negx    d7
negx.b  d7
negx.w  d7
negx.l  d7

negx    $1234.w
negx.b  $1234.w
negx.w  $1234.w
negx.l  $1234.w

negx    $12345678.l
negx.b  $12345678.l
negx.w  $12345678.l
negx.l  $12345678.l

negx    $12345678
negx.b  $12345678
negx.w  $12345678
negx.l  $12345678


not     ($12345678).l
not.b   ($12345678).l
not.w   ($12345678).l
not.l   ($12345678).l

not     ($1234).w
not.b   ($1234).w
not.w   ($1234).w
not.l   ($1234).w

not     (a7)
not.b   (a7)
not.w   (a7)
not.l   (a7)

not     (a7)+
not.b   (a7)+
not.w   (a7)+
not.l   (a7)+

not     -(a7)
not.b   -(a7)
not.w   -(a7)
not.l   -(a7)

not     $12(a7,d6.l)
not     ($12,a7,d6.l)
not.b   $12(a7,d6.l)
not.b   ($12,a7,d6.l)
not.w   $12(a7,d6.l)
not.w   ($12,a7,d6.l)
not.l   $12(a7,d6.l)
not.l   ($12,a7,d6.l)

not     $12(a7,d6.w)
not     ($12,a7,d6.w)
not.b   $12(a7,d6.w)
not.b   ($12,a7,d6.w)
not.w   $12(a7,d6.w)
not.w   ($12,a7,d6.w)
not.l   $12(a7,d6.w)
not.l   ($12,a7,d6.w)

not     $12(a7,d6)
not     ($12,a7,d6)
not.b   $12(a7,d6)
not.b   ($12,a7,d6)
not.w   $12(a7,d6)
not.w   ($12,a7,d6)
not.l   $12(a7,d6)
not.l   ($12,a7,d6)

not     $1234(a7)
not     ($1234,a7)
not.b   $1234(a7)
not.b   ($1234,a7)
not.w   $1234(a7)
not.w   ($1234,a7)
not.l   $1234(a7)
not.l   ($1234,a7)

not     d7
not.b   d7
not.w   d7
not.l   d7

not     $1234.w
not.b   $1234.w
not.w   $1234.w
not.l   $1234.w

not     $12345678.l
not.b   $12345678.l
not.w   $12345678.l
not.l   $12345678.l

not     $12345678
not.b   $12345678
not.w   $12345678
not.l   $12345678


tst     ($12345678).l
tst.b   ($12345678).l
tst.w   ($12345678).l
tst.l   ($12345678).l

tst     ($1234).w
tst.b   ($1234).w
tst.w   ($1234).w
tst.l   ($1234).w

tst     (a7)
tst.b   (a7)
tst.w   (a7)
tst.l   (a7)

tst     (a7)+
tst.b   (a7)+
tst.w   (a7)+
tst.l   (a7)+

tst     -(a7)
tst.b   -(a7)
tst.w   -(a7)
tst.l   -(a7)

tst     $12(a7,d6.l)
tst     ($12,a7,d6.l)
tst.b   $12(a7,d6.l)
tst.b   ($12,a7,d6.l)
tst.w   $12(a7,d6.l)
tst.w   ($12,a7,d6.l)
tst.l   $12(a7,d6.l)
tst.l   ($12,a7,d6.l)

tst     $12(a7,d6.w)
tst     ($12,a7,d6.w)
tst.b   $12(a7,d6.w)
tst.b   ($12,a7,d6.w)
tst.w   $12(a7,d6.w)
tst.w   ($12,a7,d6.w)
tst.l   $12(a7,d6.w)
tst.l   ($12,a7,d6.w)

tst     $12(a7,d6)
tst     ($12,a7,d6)
tst.b   $12(a7,d6)
tst.b   ($12,a7,d6)
tst.w   $12(a7,d6)
tst.w   ($12,a7,d6)
tst.l   $12(a7,d6)
tst.l   ($12,a7,d6)

tst     $1234(a7)
tst     ($1234,a7)
tst.b   $1234(a7)
tst.b   ($1234,a7)
tst.w   $1234(a7)
tst.w   ($1234,a7)
tst.l   $1234(a7)
tst.l   ($1234,a7)

tst     d7
tst.b   d7
tst.w   d7
tst.l   d7

tst     $1234.w
tst.b   $1234.w
tst.w   $1234.w
tst.l   $1234.w

tst     $12345678.l
tst.b   $12345678.l
tst.w   $12345678.l
tst.l   $12345678.l

tst     $12345678
tst.b   $12345678
tst.w   $12345678
tst.l   $12345678


pea     ($12345678).l
pea.l   ($12345678).l

pea     ($1234).w
pea.l   ($1234).w

pea     (a7)
pea.l   (a7)

pea     $12(a7,d6.l)
pea     ($12,a7,d6.l)
pea.l   $12(a7,d6.l)
pea.l   ($12,a7,d6.l)

pea     $12(a7,d6.w)
pea     ($12,a7,d6.w)
pea.l   $12(a7,d6.w)
pea.l   ($12,a7,d6.w)

pea     $12(a7,d6)
pea     ($12,a7,d6)
pea.l   $12(a7,d6)
pea.l   ($12,a7,d6)

pea     $1234(a7)
pea     ($1234,a7)
pea.l   $1234(a7)
pea.l   ($1234,a7)

PEAPC:
pea     PEAPC(pc,d7.l)
pea     (PEAPC,pc,d7.l)
pea.l   PEAPC(pc,d7.l)
pea.l   (PEAPC,pc,d7.l)

pea     PEAPC(pc,d7.w)
pea     (PEAPC,pc,d7.w)
pea.l   PEAPC(pc,d7.w)
pea.l   (PEAPC,pc,d7.w)

pea     PEAPC(pc,d7)
pea     (PEAPC,pc,d7)
pea.l   PEAPC(pc,d7)
pea.l   (PEAPC,pc,d7)

pea     $1234(pc)
pea     ($1234,pc)
pea.l   $1234(pc)
pea.l   ($1234,pc)

pea     $1234.w
pea.l   $1234.w

pea     $12345678.l
pea.l   $12345678.l

pea     $12345678
pea.l   $12345678


asr     d7,d6
asr.b   d7,d6
asr.w   d7,d6
asr.l   d7,d6

asl     d7,d6
asl.b   d7,d6
asl.w   d7,d6
asl.l   d7,d6

asr     #8,d7
asr.b   #8,d7
asr.w   #7,d7
asr.l   #6,d7

asl     #8,d7
asl.b   #8,d7
asl.w   #7,d7
asl.l   #6,d7

asr     ($12345678).l
asr.w   ($12345678).l

asl     ($12345678).l
asl.w   ($12345678).l

asr     ($1234).w
asr.w   ($1234).w

asl     ($1234).w
asl.w   ($1234).w

asr     (a7)
asr.w   (a7)

asl     (a7)
asl.w   (a7)

asr     (a7)+
asr.w   (a7)+

asl     (a7)+
asl.w   (a7)+

asr     -(a7)
asr.w   -(a7)

asl     -(a7)
asl.w   -(a7)

asr     $12(a7,d6.l)
asr     ($12,a7,d6.l)
asr.w   $12(a7,d6.l)
asr.w   ($12,a7,d6.l)

asl     $12(a7,d6.l)
asl     ($12,a7,d6.l)
asl.w   $12(a7,d6.l)
asl.w   ($12,a7,d6.l)

asr     $12(a7,d6.w)
asr     ($12,a7,d6.w)
asr.w   $12(a7,d6.w)
asr.w   ($12,a7,d6.w)

asl     $12(a7,d6.w)
asl     ($12,a7,d6.w)
asl.w   $12(a7,d6.w)
asl.w   ($12,a7,d6.w)

asr     $12(a7,d6)
asr     ($12,a7,d6)
asr.w   $12(a7,d6)
asr.w   ($12,a7,d6)

asl     $12(a7,d6)
asl     ($12,a7,d6)
asl.w   $12(a7,d6)
asl.w   ($12,a7,d6)

asr     $1234(a7)
asr     ($1234,a7)
asr.w   $1234(a7)
asr.w   ($1234,a7)

asl     $1234(a7)
asl     ($1234,a7)
asl.w   $1234(a7)
asl.w   ($1234,a7)

asr     d7
asr.w   d7

asl     d7
asl.w   d7

asr     $1234.w
asr.w   $1234.w

asl     $1234.w
asl.w   $1234.w

asr     $12345678.l
asr.w   $12345678.l

asl     $12345678.l
asl.w   $12345678.l

asr     $12345678
asr.w   $12345678

asl     $12345678
asl.w   $12345678


lsr     d7,d6
lsr.b   d7,d6
lsr.w   d7,d6
lsr.l   d7,d6

lsl     d7,d6
lsl.b   d7,d6
lsl.w   d7,d6
lsl.l   d7,d6

lsr     #8,d7
lsr.b   #8,d7
lsr.w   #7,d7
lsr.l   #6,d7

lsl     #8,d7
lsl.b   #8,d7
lsl.w   #7,d7
lsl.l   #6,d7

lsr     ($12345678).l
lsr.w   ($12345678).l

lsl     ($12345678).l
lsl.w   ($12345678).l

lsr     ($1234).w
lsr.w   ($1234).w

lsl     ($1234).w
lsl.w   ($1234).w

lsr     (a7)
lsr.w   (a7)

lsl     (a7)
lsl.w   (a7)

lsr     (a7)+
lsr.w   (a7)+

lsl     (a7)+
lsl.w   (a7)+

lsr     -(a7)
lsr.w   -(a7)

lsl     -(a7)
lsl.w   -(a7)

lsr     $12(a7,d6.l)
lsr     ($12,a7,d6.l)
lsr.w   $12(a7,d6.l)
lsr.w   ($12,a7,d6.l)

lsl     $12(a7,d6.l)
lsl     ($12,a7,d6.l)
lsl.w   $12(a7,d6.l)
lsl.w   ($12,a7,d6.l)

lsr     $12(a7,d6.w)
lsr     ($12,a7,d6.w)
lsr.w   $12(a7,d6.w)
lsr.w   ($12,a7,d6.w)

lsl     $12(a7,d6.w)
lsl     ($12,a7,d6.w)
lsl.w   $12(a7,d6.w)
lsl.w   ($12,a7,d6.w)

lsr     $12(a7,d6)
lsr     ($12,a7,d6)
lsr.w   $12(a7,d6)
lsr.w   ($12,a7,d6)

lsl     $12(a7,d6)
lsl     ($12,a7,d6)
lsl.w   $12(a7,d6)
lsl.w   ($12,a7,d6)

lsr     $1234(a7)
lsr     ($1234,a7)
lsr.w   $1234(a7)
lsr.w   ($1234,a7)

lsl     $1234(a7)
lsl     ($1234,a7)
lsl.w   $1234(a7)
lsl.w   ($1234,a7)

lsr     d7
lsr.w   d7

lsl     d7
lsl.w   d7

lsr     $1234.w
lsr.w   $1234.w

lsl     $1234.w
lsl.w   $1234.w

lsr     $12345678.l
lsr.w   $12345678.l

lsl     $12345678.l
lsl.w   $12345678.l

lsr     $12345678
lsr.w   $12345678

lsl     $12345678
lsl.w   $12345678


ror     d7,d6
ror.b   d7,d6
ror.w   d7,d6
ror.l   d7,d6

rol     d7,d6
rol.b   d7,d6
rol.w   d7,d6
rol.l   d7,d6

ror     #8,d7
ror.b   #8,d7
ror.w   #7,d7
ror.l   #6,d7

rol     #8,d7
rol.b   #8,d7
rol.w   #7,d7
rol.l   #6,d7

ror     ($12345678).l
ror.w   ($12345678).l

rol     ($12345678).l
rol.w   ($12345678).l

ror     ($1234).w
ror.w   ($1234).w

rol     ($1234).w
rol.w   ($1234).w

ror     (a7)
ror.w   (a7)

rol     (a7)
rol.w   (a7)

ror     (a7)+
ror.w   (a7)+

rol     (a7)+
rol.w   (a7)+

ror     -(a7)
ror.w   -(a7)

rol     -(a7)
rol.w   -(a7)

ror     $12(a7,d6.l)
ror     ($12,a7,d6.l)
ror.w   $12(a7,d6.l)
ror.w   ($12,a7,d6.l)

rol     $12(a7,d6.l)
rol     ($12,a7,d6.l)
rol.w   $12(a7,d6.l)
rol.w   ($12,a7,d6.l)

ror     $12(a7,d6.w)
ror     ($12,a7,d6.w)
ror.w   $12(a7,d6.w)
ror.w   ($12,a7,d6.w)

rol     $12(a7,d6.w)
rol     ($12,a7,d6.w)
rol.w   $12(a7,d6.w)
rol.w   ($12,a7,d6.w)

ror     $12(a7,d6)
ror     ($12,a7,d6)
ror.w   $12(a7,d6)
ror.w   ($12,a7,d6)

rol     $12(a7,d6)
rol     ($12,a7,d6)
rol.w   $12(a7,d6)
rol.w   ($12,a7,d6)

ror     $1234(a7)
ror     ($1234,a7)
ror.w   $1234(a7)
ror.w   ($1234,a7)

rol     $1234(a7)
rol     ($1234,a7)
rol.w   $1234(a7)
rol.w   ($1234,a7)

ror     d7
ror.w   d7

rol     d7
rol.w   d7

ror     $1234.w
ror.w   $1234.w

rol     $1234.w
rol.w   $1234.w

ror     $12345678.l
ror.w   $12345678.l

rol     $12345678.l
rol.w   $12345678.l

ror     $12345678
ror.w   $12345678

rol     $12345678
rol.w   $12345678


roxr    d7,d6
roxr.b  d7,d6
roxr.w  d7,d6
roxr.l  d7,d6

roxl    d7,d6
roxl.b  d7,d6
roxl.w  d7,d6
roxl.l  d7,d6

roxr    #8,d7
roxr.b  #8,d7
roxr.w  #7,d7
roxr.l  #6,d7

roxl    #8,d7
roxl.b  #8,d7
roxl.w  #7,d7
roxl.l  #6,d7

roxr    ($12345678).l
roxr.w  ($12345678).l

roxl    ($12345678).l
roxl.w  ($12345678).l

roxr    ($1234).w
roxr.w  ($1234).w

roxl    ($1234).w
roxl.w  ($1234).w

roxr    (a7)
roxr.w  (a7)

roxl    (a7)
roxl.w  (a7)

roxr    (a7)+
roxr.w  (a7)+

roxl    (a7)+
roxl.w  (a7)+

roxr    -(a7)
roxr.w  -(a7)

roxl    -(a7)
roxl.w  -(a7)

roxr    $12(a7,d6.l)
roxr    ($12,a7,d6.l)
roxr.w  $12(a7,d6.l)
roxr.w  ($12,a7,d6.l)

roxl    $12(a7,d6.l)
roxl    ($12,a7,d6.l)
roxl.w  $12(a7,d6.l)
roxl.w  ($12,a7,d6.l)

roxr    $12(a7,d6.w)
roxr    ($12,a7,d6.w)
roxr.w  $12(a7,d6.w)
roxr.w  ($12,a7,d6.w)

roxl    $12(a7,d6.w)
roxl    ($12,a7,d6.w)
roxl.w  $12(a7,d6.w)
roxl.w  ($12,a7,d6.w)

roxr    $12(a7,d6)
roxr    ($12,a7,d6)
roxr.w  $12(a7,d6)
roxr.w  ($12,a7,d6)

roxl    $12(a7,d6)
roxl    ($12,a7,d6)
roxl.w  $12(a7,d6)
roxl.w  ($12,a7,d6)

roxr    $1234(a7)
roxr    ($1234,a7)
roxr.w  $1234(a7)
roxr.w  ($1234,a7)

roxl    $1234(a7)
roxl    ($1234,a7)
roxl.w  $1234(a7)
roxl.w  ($1234,a7)

roxr    d7
roxr.w  d7

roxl    d7
roxl.w  d7

roxr    $1234.w
roxr.w  $1234.w

roxl    $1234.w
roxl.w  $1234.w

roxr    $12345678.l
roxr.w  $12345678.l

roxl    $12345678.l
roxl.w  $12345678.l

roxr    $12345678
roxr.w  $12345678

roxl    $12345678
roxl.w  $12345678


bchg    d7,($12345678).l
bchg.b  d7,($12345678).l

bchg    d7,($1234).w
bchg.b  d7,($1234).w

bchg    d7,(a6)
bchg.b  d7,(a6)

bchg    d7,(a6)+
bchg.b  d7,(a6)+

bchg    d7,-(a6)
bchg.b  d7,-(a6)

bchg    d7,$12(a6,d5.l)
bchg    d7,($12,a6,d5.l)
bchg.b  d7,$12(a6,d5.l)
bchg.b  d7,($12,a6,d5.l)

bchg    d7,$12(a6,d5.w)
bchg    d7,($12,a6,d5.w)
bchg.b  d7,$12(a6,d5.w)
bchg.b  d7,($12,a6,d5.w)

bchg    d7,$12(a6,d5)
bchg    d7,($12,a6,d5)
bchg.b  d7,$12(a6,d5)
bchg.b  d7,($12,a6,d5)

bchg    d7,$1234(a6)
bchg    d7,($1234,a6)
bchg.b  d7,$1234(a6)
bchg.b  d7,($1234,a6)

bchg    d7,d6
bchg.l  d7,d6

bchg    d7,$1234.w
bchg.b  d7,$1234.w

bchg    d7,$12345678.l
bchg.b  d7,$12345678.l

bchg    d7,$12345678
bchg.b  d7,$12345678

bchg    #$FE,($12345678).l
bchg.b  #$FE,($12345678).l

bchg    #$FE,($1234).w
bchg.b  #$FE,($1234).w

bchg    #$FE,(a7)
bchg.b  #$FE,(a7)

bchg    #$FE,(a7)+
bchg.b  #$FE,(a7)+

bchg    #$FE,-(a7)
bchg.b  #$FE,-(a7)

bchg    #$FE,$12(a7,d6.l)
bchg    #$FE,($12,a7,d6.l)
bchg.b  #$FE,$12(a7,d6.l)
bchg.b  #$FE,($12,a7,d6.l)

bchg    #$FE,$12(a7,d6.w)
bchg    #$FE,($12,a7,d6.w)
bchg.b  #$FE,$12(a7,d6.w)
bchg.b  #$FE,($12,a7,d6.w)

bchg    #$FE,$12(a7,d6)
bchg    #$FE,($12,a7,d6)
bchg.b  #$FE,$12(a7,d6)
bchg.b  #$FE,($12,a7,d6)

bchg    #$FE,$1234(a7)
bchg    #$FE,($1234,a7)
bchg.b  #$FE,$1234(a7)
bchg.b  #$FE,($1234,a7)

bchg    #$FE,d7
bchg.l  #$FE,d7

bchg    #$FE,$1234.w
bchg.b  #$FE,$1234.w

bchg    #$FE,$12345678.l
bchg.b  #$FE,$12345678.l

bchg    #$FE,$12345678
bchg.b  #$FE,$12345678


bclr    d7,($12345678).l
bclr.b  d7,($12345678).l

bclr    d7,($1234).w
bclr.b  d7,($1234).w

bclr    d7,(a6)
bclr.b  d7,(a6)

bclr    d7,(a6)+
bclr.b  d7,(a6)+

bclr    d7,-(a6)
bclr.b  d7,-(a6)

bclr    d7,$12(a6,d5.l)
bclr    d7,($12,a6,d5.l)
bclr.b  d7,$12(a6,d5.l)
bclr.b  d7,($12,a6,d5.l)

bclr    d7,$12(a6,d5.w)
bclr    d7,($12,a6,d5.w)
bclr.b  d7,$12(a6,d5.w)
bclr.b  d7,($12,a6,d5.w)

bclr    d7,$12(a6,d5)
bclr    d7,($12,a6,d5)
bclr.b  d7,$12(a6,d5)
bclr.b  d7,($12,a6,d5)

bclr    d7,$1234(a6)
bclr    d7,($1234,a6)
bclr.b  d7,$1234(a6)
bclr.b  d7,($1234,a6)

bclr    d7,d6
bclr.l  d7,d6

bclr    d7,$1234.w
bclr.b  d7,$1234.w

bclr    d7,$12345678.l
bclr.b  d7,$12345678.l

bclr    d7,$12345678
bclr.b  d7,$12345678

bclr    #$FE,($12345678).l
bclr.b  #$FE,($12345678).l

bclr    #$FE,($1234).w
bclr.b  #$FE,($1234).w

bclr    #$FE,(a7)
bclr.b  #$FE,(a7)

bclr    #$FE,(a7)+
bclr.b  #$FE,(a7)+

bclr    #$FE,-(a7)
bclr.b  #$FE,-(a7)

bclr    #$FE,$12(a7,d6.l)
bclr    #$FE,($12,a7,d6.l)
bclr.b  #$FE,$12(a7,d6.l)
bclr.b  #$FE,($12,a7,d6.l)

bclr    #$FE,$12(a7,d6.w)
bclr    #$FE,($12,a7,d6.w)
bclr.b  #$FE,$12(a7,d6.w)
bclr.b  #$FE,($12,a7,d6.w)

bclr    #$FE,$12(a7,d6)
bclr    #$FE,($12,a7,d6)
bclr.b  #$FE,$12(a7,d6)
bclr.b  #$FE,($12,a7,d6)

bclr    #$FE,$1234(a7)
bclr    #$FE,($1234,a7)
bclr.b  #$FE,$1234(a7)
bclr.b  #$FE,($1234,a7)

bclr    #$FE,d7
bclr.l  #$FE,d7

bclr    #$FE,$1234.w
bclr.b  #$FE,$1234.w

bclr    #$FE,$12345678.l
bclr.b  #$FE,$12345678.l

bclr    #$FE,$12345678
bclr.b  #$FE,$12345678


bset    d7,($12345678).l
bset.b  d7,($12345678).l

bset    d7,($1234).w
bset.b  d7,($1234).w

bset    d7,(a6)
bset.b  d7,(a6)

bset    d7,(a6)+
bset.b  d7,(a6)+

bset    d7,-(a6)
bset.b  d7,-(a6)

bset    d7,$12(a6,d5.l)
bset    d7,($12,a6,d5.l)
bset.b  d7,$12(a6,d5.l)
bset.b  d7,($12,a6,d5.l)

bset    d7,$12(a6,d5.w)
bset    d7,($12,a6,d5.w)
bset.b  d7,$12(a6,d5.w)
bset.b  d7,($12,a6,d5.w)

bset    d7,$12(a6,d5)
bset    d7,($12,a6,d5)
bset.b  d7,$12(a6,d5)
bset.b  d7,($12,a6,d5)

bset    d7,$1234(a6)
bset    d7,($1234,a6)
bset.b  d7,$1234(a6)
bset.b  d7,($1234,a6)

bset    d7,d6
bset.l  d7,d6

bset    d7,$1234.w
bset.b  d7,$1234.w

bset    d7,$12345678.l
bset.b  d7,$12345678.l

bset    d7,$12345678
bset.b  d7,$12345678

bset    #$FE,($12345678).l
bset.b  #$FE,($12345678).l

bset    #$FE,($1234).w
bset.b  #$FE,($1234).w

bset    #$FE,(a7)
bset.b  #$FE,(a7)

bset    #$FE,(a7)+
bset.b  #$FE,(a7)+

bset    #$FE,-(a7)
bset.b  #$FE,-(a7)

bset    #$FE,$12(a7,d6.l)
bset    #$FE,($12,a7,d6.l)
bset.b  #$FE,$12(a7,d6.l)
bset.b  #$FE,($12,a7,d6.l)

bset    #$FE,$12(a7,d6.w)
bset    #$FE,($12,a7,d6.w)
bset.b  #$FE,$12(a7,d6.w)
bset.b  #$FE,($12,a7,d6.w)

bset    #$FE,$12(a7,d6)
bset    #$FE,($12,a7,d6)
bset.b  #$FE,$12(a7,d6)
bset.b  #$FE,($12,a7,d6)

bset    #$FE,$1234(a7)
bset    #$FE,($1234,a7)
bset.b  #$FE,$1234(a7)
bset.b  #$FE,($1234,a7)

bset    #$FE,d7
bset.l  #$FE,d7

bset    #$FE,$1234.w
bset.b  #$FE,$1234.w

bset    #$FE,$12345678.l
bset.b  #$FE,$12345678.l

bset    #$FE,$12345678
bset.b  #$FE,$12345678


btst    d7,($12345678).l
btst.b  d7,($12345678).l

btst    d7,($1234).w
btst.b  d7,($1234).w

btst    d7,(a6)
btst.b  d7,(a6)

btst    d7,(a6)+
btst.b  d7,(a6)+

btst    d7,-(a6)
btst.b  d7,-(a6)

btst    d7,$12(a6,d5.l)
btst    d7,($12,a6,d5.l)
btst.b  d7,$12(a6,d5.l)
btst.b  d7,($12,a6,d5.l)

btst    d7,$12(a6,d5.w)
btst    d7,($12,a6,d5.w)
btst.b  d7,$12(a6,d5.w)
btst.b  d7,($12,a6,d5.w)

btst    d7,$12(a6,d5)
btst    d7,($12,a6,d5)
btst.b  d7,$12(a6,d5)
btst.b  d7,($12,a6,d5)

btst    d7,$1234(a6)
btst    d7,($1234,a6)
btst.b  d7,$1234(a6)
btst.b  d7,($1234,a6)

btst    d7,d6
btst.l  d7,d6

btst    d7,$1234.w
btst.b  d7,$1234.w

btst    d7,$12345678.l
btst.b  d7,$12345678.l

btst    d7,$12345678
btst.b  d7,$12345678

btst    #$FE,($12345678).l
btst.b  #$FE,($12345678).l

btst    #$FE,($1234).w
btst.b  #$FE,($1234).w

btst    #$FE,(a7)
btst.b  #$FE,(a7)

btst    #$FE,(a7)+
btst.b  #$FE,(a7)+

btst    #$FE,-(a7)
btst.b  #$FE,-(a7)

btst    #$FE,$12(a7,d6.l)
btst    #$FE,($12,a7,d6.l)
btst.b  #$FE,$12(a7,d6.l)
btst.b  #$FE,($12,a7,d6.l)

btst    #$FE,$12(a7,d6.w)
btst    #$FE,($12,a7,d6.w)
btst.b  #$FE,$12(a7,d6.w)
btst.b  #$FE,($12,a7,d6.w)

btst    #$FE,$12(a7,d6)
btst    #$FE,($12,a7,d6)
btst.b  #$FE,$12(a7,d6)
btst.b  #$FE,($12,a7,d6)

btst    #$FE,$1234(a7)
btst    #$FE,($1234,a7)
btst.b  #$FE,$1234(a7)
btst.b  #$FE,($1234,a7)

btst    #$FE,d7
btst.l  #$FE,d7

btst    #$FE,$1234.w
btst.b  #$FE,$1234.w

btst    #$FE,$12345678.l
btst.b  #$FE,$12345678.l

btst    #$FE,$12345678
btst.b  #$FE,$12345678


chk     ($12345678).l,d7
chk.w   ($12345678).l,d7

chk     ($1234).w,d7
chk.w   ($1234).w,d7

chk     (a7),d6
chk.w   (a7),d6

chk     (a7)+,d6
chk.w   (a7)+,d6

chk     -(a7),d6
chk.w   -(a7),d6

chk     $12(a7,d6.l),d5
chk     ($12,a7,d6.l),d5
chk.w   $12(a7,d6.l),d5
chk.w   ($12,a7,d6.l),d5

chk     $12(a7,d6.w),d5
chk     ($12,a7,d6.w),d5
chk.w   $12(a7,d6.w),d5
chk.w   ($12,a7,d6.w),d5

chk     $12(a7,d6),d5
chk     ($12,a7,d6),d5
chk.w   $12(a7,d6),d5
chk.w   ($12,a7,d6),d5

chk     $1234(a7),d6
chk     ($1234,a7),d6
chk.w   $1234(a7),d6
chk.w   ($1234,a7),d6

CHKPC:
chk     CHKPC(pc,d7.l),d6
chk     (CHKPC,pc,d7.l),d6
chk.w   CHKPC(pc,d7.l),d6
chk.w   (CHKPC,pc,d7.l),d6

chk     CHKPC(pc,d7.w),d6
chk     (CHKPC,pc,d7.w),d6
chk.w   CHKPC(pc,d7.w),d6
chk.w   (CHKPC,pc,d7.w),d6

chk     CHKPC(pc,d7),d6
chk     (CHKPC,pc,d7),d6
chk.w   CHKPC(pc,d7),d6
chk.w   (CHKPC,pc,d7),d6

chk     $1234(pc),d7
chk     ($1234,pc),d7
chk.w   $1234(pc),d7
chk.w   ($1234,pc),d7

chk     d7,d6
chk.w   d7,d6

chk     #$FEDC,d7
chk.w   #$FEDC,d7

chk     $1234.w,d7
chk.w   $1234.w,d7

chk     $12345678.l,d7
chk.w   $12345678.l,d7

chk     $12345678,d7
chk.w   $12345678,d7


lea     ($12345678).l,a7
lea.l   ($12345678).l,a7

lea     ($1234).w,a7
lea.l   ($1234).w,a7

lea     (a7),a6
lea.l   (a7),a6

lea     $12(a7,d6.l),a5
lea     ($12,a7,d6.l),a5
lea.l   $12(a7,d6.l),a5
lea.l   ($12,a7,d6.l),a5

lea     $12(a7,d6.w),a5
lea     ($12,a7,d6.w),a5
lea.l   $12(a7,d6.w),a5
lea.l   ($12,a7,d6.w),a5

lea     $12(a7,d6),a5
lea     ($12,a7,d6),a5
lea.l   $12(a7,d6),a5
lea.l   ($12,a7,d6),a5

lea     $1234(a7),a6
lea     ($1234,a7),a6
lea.l   $1234(a7),a6
lea.l   ($1234,a7),a6

LEAPC:
lea     LEAPC(pc,d7.l),a6
lea     (LEAPC,pc,d7.l),a6
lea.l   LEAPC(pc,d7.l),a6
lea.l   (LEAPC,pc,d7.l),a6

lea     LEAPC(pc,d7.w),a6
lea     (LEAPC,pc,d7.w),a6
lea.l   LEAPC(pc,d7.w),a6
lea.l   (LEAPC,pc,d7.w),a6

lea     LEAPC(pc,d7),a6
lea     (LEAPC,pc,d7),a6
lea.l   LEAPC(pc,d7),a6
lea.l   (LEAPC,pc,d7),a6

lea     $1234(pc),a7
lea     ($1234,pc),a7
lea.l   $1234(pc),a7
lea.l   ($1234,pc),a7

lea     $1234.w,a7
lea.l   $1234.w,a7

lea     $12345678.l,a7
lea.l   $12345678.l,a7

lea     $12345678,a7
lea.l   $12345678,a7


clr     ($12345678).l
clr.b   ($12345678).l
clr.w   ($12345678).l
clr.l   ($12345678).l

clr     ($1234).w
clr.b   ($1234).w
clr.w   ($1234).w
clr.l   ($1234).w

clr     (a7)
clr.b   (a7)
clr.w   (a7)
clr.l   (a7)

clr     (a7)+
clr.b   (a7)+
clr.w   (a7)+
clr.l   (a7)+

clr     -(a7)
clr.b   -(a7)
clr.w   -(a7)
clr.l   -(a7)

clr     $12(a7,d6.l)
clr     ($12,a7,d6.l)
clr.b   $12(a7,d6.l)
clr.b   ($12,a7,d6.l)
clr.w   $12(a7,d6.l)
clr.w   ($12,a7,d6.l)
clr.l   $12(a7,d6.l)
clr.l   ($12,a7,d6.l)

clr     $12(a7,d6.w)
clr     ($12,a7,d6.w)
clr.b   $12(a7,d6.w)
clr.b   ($12,a7,d6.w)
clr.w   $12(a7,d6.w)
clr.w   ($12,a7,d6.w)
clr.l   $12(a7,d6.w)
clr.l   ($12,a7,d6.w)

clr     $12(a7,d6)
clr     ($12,a7,d6)
clr.b   $12(a7,d6)
clr.b   ($12,a7,d6)
clr.w   $12(a7,d6)
clr.w   ($12,a7,d6)
clr.l   $12(a7,d6)
clr.l   ($12,a7,d6)

clr     $1234(a7)
clr     ($1234,a7)
clr.b   $1234(a7)
clr.b   ($1234,a7)
clr.w   $1234(a7)
clr.w   ($1234,a7)
clr.l   $1234(a7)
clr.l   ($1234,a7)

clr     d7
clr.b   d7
clr.w   d7
clr.l   d7

clr     $1234.w
clr.b   $1234.w
clr.w   $1234.w
clr.l   $1234.w

clr     $12345678.l
clr.b   $12345678.l
clr.w   $12345678.l
clr.l   $12345678.l

clr     $12345678
clr.b   $12345678
clr.w   $12345678
clr.l   $12345678


move    ($12345678).l,(-$12345678).l
move.b  ($12345678).l,(-$12345678).l
move.w  ($12345678).l,(-$12345678).l
move.l  ($12345678).l,(-$12345678).l

move    ($12345678).l,(-$1234).w
move.b  ($12345678).l,(-$1234).w
move.w  ($12345678).l,(-$1234).w
move.l  ($12345678).l,(-$1234).w

move    ($12345678).l,(a7)
move.b  ($12345678).l,(a7)
move.w  ($12345678).l,(a7)
move.l  ($12345678).l,(a7)

move    ($12345678).l,(a7)+
move.b  ($12345678).l,(a7)+
move.w  ($12345678).l,(a7)+
move.l  ($12345678).l,(a7)+

move    ($12345678).l,-(a7)
move.b  ($12345678).l,-(a7)
move.w  ($12345678).l,-(a7)
move.l  ($12345678).l,-(a7)

move    ($12345678).l,-$12(a7,d6.l)
move    ($12345678).l,(-$12,a7,d6.l)
move.b  ($12345678).l,-$12(a7,d6.l)
move.b  ($12345678).l,(-$12,a7,d6.l)
move.w  ($12345678).l,-$12(a7,d6.l)
move.w  ($12345678).l,(-$12,a7,d6.l)
move.l  ($12345678).l,-$12(a7,d6.l)
move.l  ($12345678).l,(-$12,a7,d6.l)

move    ($12345678).l,-$12(a7,d6.w)
move    ($12345678).l,(-$12,a7,d6.w)
move.b  ($12345678).l,-$12(a7,d6.w)
move.b  ($12345678).l,(-$12,a7,d6.w)
move.w  ($12345678).l,-$12(a7,d6.w)
move.w  ($12345678).l,(-$12,a7,d6.w)
move.l  ($12345678).l,-$12(a7,d6.w)
move.l  ($12345678).l,(-$12,a7,d6.w)

move    ($12345678).l,-$12(a7,d6)
move    ($12345678).l,(-$12,a7,d6)
move.b  ($12345678).l,-$12(a7,d6)
move.b  ($12345678).l,(-$12,a7,d6)
move.w  ($12345678).l,-$12(a7,d6)
move.w  ($12345678).l,(-$12,a7,d6)
move.l  ($12345678).l,-$12(a7,d6)
move.l  ($12345678).l,(-$12,a7,d6)

move    ($12345678).l,-$1234(a7)
move    ($12345678).l,(-$1234,a7)
move.b  ($12345678).l,-$1234(a7)
move.b  ($12345678).l,(-$1234,a7)
move.w  ($12345678).l,-$1234(a7)
move.w  ($12345678).l,(-$1234,a7)
move.l  ($12345678).l,-$1234(a7)
move.l  ($12345678).l,(-$1234,a7)

move    ($12345678).l,d7
move.b  ($12345678).l,d7
move.w  ($12345678).l,d7
move.l  ($12345678).l,d7

move    d7,($12345678).l
move.b  d7,($12345678).l
move.w  d7,($12345678).l
move.l  d7,($12345678).l


move    ($1234).w,(-$12345678).l
move.b  ($1234).w,(-$12345678).l
move.w  ($1234).w,(-$12345678).l
move.l  ($1234).w,(-$12345678).l

move    ($1234).w,(-$1234).w
move.b  ($1234).w,(-$1234).w
move.w  ($1234).w,(-$1234).w
move.l  ($1234).w,(-$1234).w

move    ($1234).w,(a7)
move.b  ($1234).w,(a7)
move.w  ($1234).w,(a7)
move.l  ($1234).w,(a7)

move    ($1234).w,(a7)+
move.b  ($1234).w,(a7)+
move.w  ($1234).w,(a7)+
move.l  ($1234).w,(a7)+

move    ($1234).w,-(a7)
move.b  ($1234).w,-(a7)
move.w  ($1234).w,-(a7)
move.l  ($1234).w,-(a7)

move    ($1234).w,-$12(a7,d6.l)
move    ($1234).w,(-$12,a7,d6.l)
move.b  ($1234).w,-$12(a7,d6.l)
move.b  ($1234).w,(-$12,a7,d6.l)
move.w  ($1234).w,-$12(a7,d6.l)
move.w  ($1234).w,(-$12,a7,d6.l)
move.l  ($1234).w,-$12(a7,d6.l)
move.l  ($1234).w,(-$12,a7,d6.l)

move    ($1234).w,-$12(a7,d6.w)
move    ($1234).w,(-$12,a7,d6.w)
move.b  ($1234).w,-$12(a7,d6.w)
move.b  ($1234).w,(-$12,a7,d6.w)
move.w  ($1234).w,-$12(a7,d6.w)
move.w  ($1234).w,(-$12,a7,d6.w)
move.l  ($1234).w,-$12(a7,d6.w)
move.l  ($1234).w,(-$12,a7,d6.w)

move    ($1234).w,-$12(a7,d6)
move    ($1234).w,(-$12,a7,d6)
move.b  ($1234).w,-$12(a7,d6)
move.b  ($1234).w,(-$12,a7,d6)
move.w  ($1234).w,-$12(a7,d6)
move.w  ($1234).w,(-$12,a7,d6)
move.l  ($1234).w,-$12(a7,d6)
move.l  ($1234).w,(-$12,a7,d6)

move    ($1234).w,-$1234(a7)
move    ($1234).w,(-$1234,a7)
move.b  ($1234).w,-$1234(a7)
move.b  ($1234).w,(-$1234,a7)
move.w  ($1234).w,-$1234(a7)
move.w  ($1234).w,(-$1234,a7)
move.l  ($1234).w,-$1234(a7)
move.l  ($1234).w,(-$1234,a7)

move    ($1234).w,d7
move.b  ($1234).w,d7
move.w  ($1234).w,d7
move.l  ($1234).w,d7

move    d7,($1234).w
move.b  d7,($1234).w
move.w  d7,($1234).w
move.l  d7,($1234).w


move    (a7),(-$12345678).l
move.b  (a7),(-$12345678).l
move.w  (a7),(-$12345678).l
move.l  (a7),(-$12345678).l

move    (a7),(-$1234).w
move.b  (a7),(-$1234).w
move.w  (a7),(-$1234).w
move.l  (a7),(-$1234).w

move    (a7),(a6)
move.b  (a7),(a6)
move.w  (a7),(a6)
move.l  (a7),(a6)

move    (a7),(a6)+
move.b  (a7),(a6)+
move.w  (a7),(a6)+
move.l  (a7),(a6)+

move    (a7),-(a6)
move.b  (a7),-(a6)
move.w  (a7),-(a6)
move.l  (a7),-(a6)

move    (a7),-$12(a6,d5.l)
move    (a7),(-$12,a6,d5.l)
move.b  (a7),-$12(a6,d5.l)
move.b  (a7),(-$12,a6,d5.l)
move.w  (a7),-$12(a6,d5.l)
move.w  (a7),(-$12,a6,d5.l)
move.l  (a7),-$12(a6,d5.l)
move.l  (a7),(-$12,a6,d5.l)

move    (a7),-$12(a6,d5.w)
move    (a7),(-$12,a6,d5.w)
move.b  (a7),-$12(a6,d5.w)
move.b  (a7),(-$12,a6,d5.w)
move.w  (a7),-$12(a6,d5.w)
move.w  (a7),(-$12,a6,d5.w)
move.l  (a7),-$12(a6,d5.w)
move.l  (a7),(-$12,a6,d5.w)

move    (a7),-$12(a6,d5)
move    (a7),(-$12,a6,d5)
move.b  (a7),-$12(a6,d5)
move.b  (a7),(-$12,a6,d5)
move.w  (a7),-$12(a6,d5)
move.w  (a7),(-$12,a6,d5)
move.l  (a7),-$12(a6,d5)
move.l  (a7),(-$12,a6,d5)

move    (a7),-$1234(a6)
move    (a7),(-$1234,a6)
move.b  (a7),-$1234(a6)
move.b  (a7),(-$1234,a6)
move.w  (a7),-$1234(a6)
move.w  (a7),(-$1234,a6)
move.l  (a7),-$1234(a6)
move.l  (a7),(-$1234,a6)

move    (a7),d6
move.b  (a7),d6
move.w  (a7),d6
move.l  (a7),d6

move    d7,(a6)
move.b  d7,(a6)
move.w  d7,(a6)
move.l  d7,(a6)


move    (a7)+,(-$12345678).l
move.b  (a7)+,(-$12345678).l
move.w  (a7)+,(-$12345678).l
move.l  (a7)+,(-$12345678).l

move    (a7)+,(-$1234).w
move.b  (a7)+,(-$1234).w
move.w  (a7)+,(-$1234).w
move.l  (a7)+,(-$1234).w

move    (a7)+,(a6)
move.b  (a7)+,(a6)
move.w  (a7)+,(a6)
move.l  (a7)+,(a6)

move    (a7)+,(a6)+
move.b  (a7)+,(a6)+
move.w  (a7)+,(a6)+
move.l  (a7)+,(a6)+

move    (a7)+,-(a6)
move.b  (a7)+,-(a6)
move.w  (a7)+,-(a6)
move.l  (a7)+,-(a6)

move    (a7)+,-$12(a6,d5.l)
move    (a7)+,(-$12,a6,d5.l)
move.b  (a7)+,-$12(a6,d5.l)
move.b  (a7)+,(-$12,a6,d5.l)
move.w  (a7)+,-$12(a6,d5.l)
move.w  (a7)+,(-$12,a6,d5.l)
move.l  (a7)+,-$12(a6,d5.l)
move.l  (a7)+,(-$12,a6,d5.l)

move    (a7)+,-$12(a6,d5.w)
move    (a7)+,(-$12,a6,d5.w)
move.b  (a7)+,-$12(a6,d5.w)
move.b  (a7)+,(-$12,a6,d5.w)
move.w  (a7)+,-$12(a6,d5.w)
move.w  (a7)+,(-$12,a6,d5.w)
move.l  (a7)+,-$12(a6,d5.w)
move.l  (a7)+,(-$12,a6,d5.w)

move    (a7)+,-$12(a6,d5)
move    (a7)+,(-$12,a6,d5)
move.b  (a7)+,-$12(a6,d5)
move.b  (a7)+,(-$12,a6,d5)
move.w  (a7)+,-$12(a6,d5)
move.w  (a7)+,(-$12,a6,d5)
move.l  (a7)+,-$12(a6,d5)
move.l  (a7)+,(-$12,a6,d5)

move    (a7)+,-$1234(a6)
move    (a7)+,(-$1234,a6)
move.b  (a7)+,-$1234(a6)
move.b  (a7)+,(-$1234,a6)
move.w  (a7)+,-$1234(a6)
move.w  (a7)+,(-$1234,a6)
move.l  (a7)+,-$1234(a6)
move.l  (a7)+,(-$1234,a6)

move    (a7)+,d6
move.b  (a7)+,d6
move.w  (a7)+,d6
move.l  (a7)+,d6

move    d7,(a6)+
move.b  d7,(a6)+
move.w  d7,(a6)+
move.l  d7,(a6)+


move    -(a7),(-$12345678).l
move.b  -(a7),(-$12345678).l
move.w  -(a7),(-$12345678).l
move.l  -(a7),(-$12345678).l

move    -(a7),(-$1234).w
move.b  -(a7),(-$1234).w
move.w  -(a7),(-$1234).w
move.l  -(a7),(-$1234).w

move    -(a7),(a6)
move.b  -(a7),(a6)
move.w  -(a7),(a6)
move.l  -(a7),(a6)

move    -(a7),(a6)+
move.b  -(a7),(a6)+
move.w  -(a7),(a6)+
move.l  -(a7),(a6)+

move    -(a7),-(a6)
move.b  -(a7),-(a6)
move.w  -(a7),-(a6)
move.l  -(a7),-(a6)

move    -(a7),-$12(a6,d5.l)
move    -(a7),(-$12,a6,d5.l)
move.b  -(a7),-$12(a6,d5.l)
move.b  -(a7),(-$12,a6,d5.l)
move.w  -(a7),-$12(a6,d5.l)
move.w  -(a7),(-$12,a6,d5.l)
move.l  -(a7),-$12(a6,d5.l)
move.l  -(a7),(-$12,a6,d5.l)

move    -(a7),-$12(a6,d5.w)
move    -(a7),(-$12,a6,d5.w)
move.b  -(a7),-$12(a6,d5.w)
move.b  -(a7),(-$12,a6,d5.w)
move.w  -(a7),-$12(a6,d5.w)
move.w  -(a7),(-$12,a6,d5.w)
move.l  -(a7),-$12(a6,d5.w)
move.l  -(a7),(-$12,a6,d5.w)

move    -(a7),-$12(a6,d5)
move    -(a7),(-$12,a6,d5)
move.b  -(a7),-$12(a6,d5)
move.b  -(a7),(-$12,a6,d5)
move.w  -(a7),-$12(a6,d5)
move.w  -(a7),(-$12,a6,d5)
move.l  -(a7),-$12(a6,d5)
move.l  -(a7),(-$12,a6,d5)

move    -(a7),-$1234(a6)
move    -(a7),(-$1234,a6)
move.b  -(a7),-$1234(a6)
move.b  -(a7),(-$1234,a6)
move.w  -(a7),-$1234(a6)
move.w  -(a7),(-$1234,a6)
move.l  -(a7),-$1234(a6)
move.l  -(a7),(-$1234,a6)

move    -(a7),d6
move.b  -(a7),d6
move.w  -(a7),d6
move.l  -(a7),d6

move    d7,-(a6)
move.b  d7,-(a6)
move.w  d7,-(a6)
move.l  d7,-(a6)


move    $12(a7,d6.l),(-$12345678).l
move    ($12,a7,d6.l),(-$12345678).l
move.b  $12(a7,d6.l),(-$12345678).l
move.b  ($12,a7,d6.l),(-$12345678).l
move.w  $12(a7,d6.l),(-$12345678).l
move.w  ($12,a7,d6.l),(-$12345678).l
move.l  $12(a7,d6.l),(-$12345678).l
move.l  ($12,a7,d6.l),(-$12345678).l

move    $12(a7,d6.l),(-$1234).w
move    ($12,a7,d6.l),(-$1234).w
move.b  $12(a7,d6.l),(-$1234).w
move.b  ($12,a7,d6.l),(-$1234).w
move.w  $12(a7,d6.l),(-$1234).w
move.w  ($12,a7,d6.l),(-$1234).w
move.l  $12(a7,d6.l),(-$1234).w
move.l  ($12,a7,d6.l),(-$1234).w

move    $12(a7,d6.l),(a5)
move    ($12,a7,d6.l),(a5)
move.b  $12(a7,d6.l),(a5)
move.b  ($12,a7,d6.l),(a5)
move.w  $12(a7,d6.l),(a5)
move.w  ($12,a7,d6.l),(a5)
move.l  $12(a7,d6.l),(a5)
move.l  ($12,a7,d6.l),(a5)

move    $12(a7,d6.l),(a5)+
move    ($12,a7,d6.l),(a5)+
move.b  $12(a7,d6.l),(a5)+
move.b  ($12,a7,d6.l),(a5)+
move.w  $12(a7,d6.l),(a5)+
move.w  ($12,a7,d6.l),(a5)+
move.l  $12(a7,d6.l),(a5)+
move.l  ($12,a7,d6.l),(a5)+

move    $12(a7,d6.l),-(a5)
move    ($12,a7,d6.l),-(a5)
move.b  $12(a7,d6.l),-(a5)
move.b  ($12,a7,d6.l),-(a5)
move.w  $12(a7,d6.l),-(a5)
move.w  ($12,a7,d6.l),-(a5)
move.l  $12(a7,d6.l),-(a5)
move.l  ($12,a7,d6.l),-(a5)

move    $12(a7,d6.l),-$12(a5,d4.l)
move    ($12,a7,d6.l),(-$12,a5,d4.l)
move.b  $12(a7,d6.l),-$12(a5,d4.l)
move.b  ($12,a7,d6.l),(-$12,a5,d4.l)
move.w  $12(a7,d6.l),-$12(a5,d4.l)
move.w  ($12,a7,d6.l),(-$12,a5,d4.l)
move.l  $12(a7,d6.l),-$12(a5,d4.l)
move.l  ($12,a7,d6.l),(-$12,a5,d4.l)

move    $12(a7,d6.l),-$12(a5,d4.w)
move    ($12,a7,d6.l),(-$12,a5,d4.w)
move.b  $12(a7,d6.l),-$12(a5,d4.w)
move.b  ($12,a7,d6.l),(-$12,a5,d4.w)
move.w  $12(a7,d6.l),-$12(a5,d4.w)
move.w  ($12,a7,d6.l),(-$12,a5,d4.w)
move.l  $12(a7,d6.l),-$12(a5,d4.w)
move.l  ($12,a7,d6.l),(-$12,a5,d4.w)

move    $12(a7,d6.l),-$12(a5,d4)
move    ($12,a7,d6.l),(-$12,a5,d4)
move.b  $12(a7,d6.l),-$12(a5,d4)
move.b  ($12,a7,d6.l),(-$12,a5,d4)
move.w  $12(a7,d6.l),-$12(a5,d4)
move.w  ($12,a7,d6.l),(-$12,a5,d4)
move.l  $12(a7,d6.l),-$12(a5,d4)
move.l  ($12,a7,d6.l),(-$12,a5,d4)

move    $12(a7,d6.l),-$1234(a5)
move    ($12,a7,d6.l),(-$1234,a5)
move.b  $12(a7,d6.l),-$1234(a5)
move.b  ($12,a7,d6.l),(-$1234,a5)
move.w  $12(a7,d6.l),-$1234(a5)
move.w  ($12,a7,d6.l),(-$1234,a5)
move.l  $12(a7,d6.l),-$1234(a5)
move.l  ($12,a7,d6.l),(-$1234,a5)

move    $12(a7,d6.l),d5
move    ($12,a7,d6.l),d5
move.b  $12(a7,d6.l),d5
move.b  ($12,a7,d6.l),d5
move.w  $12(a7,d6.l),d5
move.w  ($12,a7,d6.l),d5
move.l  $12(a7,d6.l),d5
move.l  ($12,a7,d6.l),d5

move    d7,$12(a6,d5.l)
move    d7,($12,a6,d5.l)
move.b  d7,$12(a6,d5.l)
move.b  d7,($12,a6,d5.l)
move.w  d7,$12(a6,d5.l)
move.w  d7,($12,a6,d5.l)
move.l  d7,$12(a6,d5.l)
move.l  d7,($12,a6,d5.l)


move    $12(a7,d6.w),(-$12345678).l
move    ($12,a7,d6.w),(-$12345678).l
move.b  $12(a7,d6.w),(-$12345678).l
move.b  ($12,a7,d6.w),(-$12345678).l
move.w  $12(a7,d6.w),(-$12345678).l
move.w  ($12,a7,d6.w),(-$12345678).l
move.l  $12(a7,d6.w),(-$12345678).l
move.l  ($12,a7,d6.w),(-$12345678).l

move    $12(a7,d6.w),(-$1234).w
move    ($12,a7,d6.w),(-$1234).w
move.b  $12(a7,d6.w),(-$1234).w
move.b  ($12,a7,d6.w),(-$1234).w
move.w  $12(a7,d6.w),(-$1234).w
move.w  ($12,a7,d6.w),(-$1234).w
move.l  $12(a7,d6.w),(-$1234).w
move.l  ($12,a7,d6.w),(-$1234).w

move    $12(a7,d6.w),(a5)
move    ($12,a7,d6.w),(a5)
move.b  $12(a7,d6.w),(a5)
move.b  ($12,a7,d6.w),(a5)
move.w  $12(a7,d6.w),(a5)
move.w  ($12,a7,d6.w),(a5)
move.l  $12(a7,d6.w),(a5)
move.l  ($12,a7,d6.w),(a5)

move    $12(a7,d6.w),(a5)+
move    ($12,a7,d6.w),(a5)+
move.b  $12(a7,d6.w),(a5)+
move.b  ($12,a7,d6.w),(a5)+
move.w  $12(a7,d6.w),(a5)+
move.w  ($12,a7,d6.w),(a5)+
move.l  $12(a7,d6.w),(a5)+
move.l  ($12,a7,d6.w),(a5)+

move    $12(a7,d6.w),-(a5)
move    ($12,a7,d6.w),-(a5)
move.b  $12(a7,d6.w),-(a5)
move.b  ($12,a7,d6.w),-(a5)
move.w  $12(a7,d6.w),-(a5)
move.w  ($12,a7,d6.w),-(a5)
move.l  $12(a7,d6.w),-(a5)
move.l  ($12,a7,d6.w),-(a5)

move    $12(a7,d6.w),-$12(a5,d4.l)
move    ($12,a7,d6.w),(-$12,a5,d4.l)
move.b  $12(a7,d6.w),-$12(a5,d4.l)
move.b  ($12,a7,d6.w),(-$12,a5,d4.l)
move.w  $12(a7,d6.w),-$12(a5,d4.l)
move.w  ($12,a7,d6.w),(-$12,a5,d4.l)
move.l  $12(a7,d6.w),-$12(a5,d4.l)
move.l  ($12,a7,d6.w),(-$12,a5,d4.l)

move    $12(a7,d6.w),-$12(a5,d4.w)
move    ($12,a7,d6.w),(-$12,a5,d4.w)
move.b  $12(a7,d6.w),-$12(a5,d4.w)
move.b  ($12,a7,d6.w),(-$12,a5,d4.w)
move.w  $12(a7,d6.w),-$12(a5,d4.w)
move.w  ($12,a7,d6.w),(-$12,a5,d4.w)
move.l  $12(a7,d6.w),-$12(a5,d4.w)
move.l  ($12,a7,d6.w),(-$12,a5,d4.w)

move    $12(a7,d6.w),-$12(a5,d4)
move    ($12,a7,d6.w),(-$12,a5,d4)
move.b  $12(a7,d6.w),-$12(a5,d4)
move.b  ($12,a7,d6.w),(-$12,a5,d4)
move.w  $12(a7,d6.w),-$12(a5,d4)
move.w  ($12,a7,d6.w),(-$12,a5,d4)
move.l  $12(a7,d6.w),-$12(a5,d4)
move.l  ($12,a7,d6.w),(-$12,a5,d4)

move    $12(a7,d6.w),-$1234(a5)
move    ($12,a7,d6.w),(-$1234,a5)
move.b  $12(a7,d6.w),-$1234(a5)
move.b  ($12,a7,d6.w),(-$1234,a5)
move.w  $12(a7,d6.w),-$1234(a5)
move.w  ($12,a7,d6.w),(-$1234,a5)
move.l  $12(a7,d6.w),-$1234(a5)
move.l  ($12,a7,d6.w),(-$1234,a5)

move    $12(a7,d6.w),d5
move    ($12,a7,d6.w),d5
move.b  $12(a7,d6.w),d5
move.b  ($12,a7,d6.w),d5
move.w  $12(a7,d6.w),d5
move.w  ($12,a7,d6.w),d5
move.l  $12(a7,d6.w),d5
move.l  ($12,a7,d6.w),d5

move    d7,$12(a6,d5.w)
move    d7,($12,a6,d5.w)
move.b  d7,$12(a6,d5.w)
move.b  d7,($12,a6,d5.w)
move.w  d7,$12(a6,d5.w)
move.w  d7,($12,a6,d5.w)
move.l  d7,$12(a6,d5.w)
move.l  d7,($12,a6,d5.w)


move    $12(a7,d6),(-$12345678).l
move    ($12,a7,d6),(-$12345678).l
move.b  $12(a7,d6),(-$12345678).l
move.b  ($12,a7,d6),(-$12345678).l
move.w  $12(a7,d6),(-$12345678).l
move.w  ($12,a7,d6),(-$12345678).l
move.l  $12(a7,d6),(-$12345678).l
move.l  ($12,a7,d6),(-$12345678).l

move    $12(a7,d6),(-$1234).w
move    ($12,a7,d6),(-$1234).w
move.b  $12(a7,d6),(-$1234).w
move.b  ($12,a7,d6),(-$1234).w
move.w  $12(a7,d6),(-$1234).w
move.w  ($12,a7,d6),(-$1234).w
move.l  $12(a7,d6),(-$1234).w
move.l  ($12,a7,d6),(-$1234).w

move    $12(a7,d6),(a5)
move    ($12,a7,d6),(a5)
move.b  $12(a7,d6),(a5)
move.b  ($12,a7,d6),(a5)
move.w  $12(a7,d6),(a5)
move.w  ($12,a7,d6),(a5)
move.l  $12(a7,d6),(a5)
move.l  ($12,a7,d6),(a5)

move    $12(a7,d6),(a5)+
move    ($12,a7,d6),(a5)+
move.b  $12(a7,d6),(a5)+
move.b  ($12,a7,d6),(a5)+
move.w  $12(a7,d6),(a5)+
move.w  ($12,a7,d6),(a5)+
move.l  $12(a7,d6),(a5)+
move.l  ($12,a7,d6),(a5)+

move    $12(a7,d6),-(a5)
move    ($12,a7,d6),-(a5)
move.b  $12(a7,d6),-(a5)
move.b  ($12,a7,d6),-(a5)
move.w  $12(a7,d6),-(a5)
move.w  ($12,a7,d6),-(a5)
move.l  $12(a7,d6),-(a5)
move.l  ($12,a7,d6),-(a5)

move    $12(a7,d6),-$12(a5,d4.l)
move    ($12,a7,d6),(-$12,a5,d4.l)
move.b  $12(a7,d6),-$12(a5,d4.l)
move.b  ($12,a7,d6),(-$12,a5,d4.l)
move.w  $12(a7,d6),-$12(a5,d4.l)
move.w  ($12,a7,d6),(-$12,a5,d4.l)
move.l  $12(a7,d6),-$12(a5,d4.l)
move.l  ($12,a7,d6),(-$12,a5,d4.l)

move    $12(a7,d6),-$12(a5,d4.w)
move    ($12,a7,d6),(-$12,a5,d4.w)
move.b  $12(a7,d6),-$12(a5,d4.w)
move.b  ($12,a7,d6),(-$12,a5,d4.w)
move.w  $12(a7,d6),-$12(a5,d4.w)
move.w  ($12,a7,d6),(-$12,a5,d4.w)
move.l  $12(a7,d6),-$12(a5,d4.w)
move.l  ($12,a7,d6),(-$12,a5,d4.w)

move    $12(a7,d6),-$12(a5,d4)
move    ($12,a7,d6),(-$12,a5,d4)
move.b  $12(a7,d6),-$12(a5,d4)
move.b  ($12,a7,d6),(-$12,a5,d4)
move.w  $12(a7,d6),-$12(a5,d4)
move.w  ($12,a7,d6),(-$12,a5,d4)
move.l  $12(a7,d6),-$12(a5,d4)
move.l  ($12,a7,d6),(-$12,a5,d4)

move    $12(a7,d6),-$1234(a5)
move    ($12,a7,d6),(-$1234,a5)
move.b  $12(a7,d6),-$1234(a5)
move.b  ($12,a7,d6),(-$1234,a5)
move.w  $12(a7,d6),-$1234(a5)
move.w  ($12,a7,d6),(-$1234,a5)
move.l  $12(a7,d6),-$1234(a5)
move.l  ($12,a7,d6),(-$1234,a5)

move    $12(a7,d6),d5
move    ($12,a7,d6),d5
move.b  $12(a7,d6),d5
move.b  ($12,a7,d6),d5
move.w  $12(a7,d6),d5
move.w  ($12,a7,d6),d5
move.l  $12(a7,d6),d5
move.l  ($12,a7,d6),d5

move    d7,$12(a6,d5)
move    d7,($12,a6,d5)
move.b  d7,$12(a6,d5)
move.b  d7,($12,a6,d5)
move.w  d7,$12(a6,d5)
move.w  d7,($12,a6,d5)
move.l  d7,$12(a6,d5)
move.l  d7,($12,a6,d5)


move    $1234(a7),(-$12345678).l
move    ($1234,a7),(-$12345678).l
move.b  $1234(a7),(-$12345678).l
move.b  ($1234,a7),(-$12345678).l
move.w  $1234(a7),(-$12345678).l
move.w  ($1234,a7),(-$12345678).l
move.l  $1234(a7),(-$12345678).l
move.l  ($1234,a7),(-$12345678).l

move    $1234(a7),(-$1234).w
move    ($1234,a7),(-$1234).w
move.b  $1234(a7),(-$1234).w
move.b  ($1234,a7),(-$1234).w
move.w  $1234(a7),(-$1234).w
move.w  ($1234,a7),(-$1234).w
move.l  $1234(a7),(-$1234).w
move.l  ($1234,a7),(-$1234).w

move    $1234(a7),(a6)
move    ($1234,a7),(a6)
move.b  $1234(a7),(a6)
move.b  ($1234,a7),(a6)
move.w  $1234(a7),(a6)
move.w  ($1234,a7),(a6)
move.l  $1234(a7),(a6)
move.l  ($1234,a7),(a6)

move    $1234(a7),(a6)+
move    ($1234,a7),(a6)+
move.b  $1234(a7),(a6)+
move.b  ($1234,a7),(a6)+
move.w  $1234(a7),(a6)+
move.w  ($1234,a7),(a6)+
move.l  $1234(a7),(a6)+
move.l  ($1234,a7),(a6)+

move    $1234(a7),-(a6)
move    ($1234,a7),-(a6)
move.b  $1234(a7),-(a6)
move.b  ($1234,a7),-(a6)
move.w  $1234(a7),-(a6)
move.w  ($1234,a7),-(a6)
move.l  $1234(a7),-(a6)
move.l  ($1234,a7),-(a6)

move    $1234(a7),-$12(a6,d5.l)
move    ($1234,a7),(-$12,a6,d5.l)
move.b  $1234(a7),-$12(a6,d5.l)
move.b  ($1234,a7),(-$12,a6,d5.l)
move.w  $1234(a7),-$12(a6,d5.l)
move.w  ($1234,a7),(-$12,a6,d5.l)
move.l  $1234(a7),-$12(a6,d5.l)
move.l  ($1234,a7),(-$12,a6,d5.l)

move    $1234(a7),-$12(a6,d5.w)
move    ($1234,a7),(-$12,a6,d5.w)
move.b  $1234(a7),-$12(a6,d5.w)
move.b  ($1234,a7),(-$12,a6,d5.w)
move.w  $1234(a7),-$12(a6,d5.w)
move.w  ($1234,a7),(-$12,a6,d5.w)
move.l  $1234(a7),-$12(a6,d5.w)
move.l  ($1234,a7),(-$12,a6,d5.w)

move    $1234(a7),-$12(a6,d5)
move    ($1234,a7),(-$12,a6,d5)
move.b  $1234(a7),-$12(a6,d5)
move.b  ($1234,a7),(-$12,a6,d5)
move.w  $1234(a7),-$12(a6,d5)
move.w  ($1234,a7),(-$12,a6,d5)
move.l  $1234(a7),-$12(a6,d5)
move.l  ($1234,a7),(-$12,a6,d5)

move    $1234(a7),-$1234(a6)
move    ($1234,a7),(-$1234,a6)
move.b  $1234(a7),-$1234(a6)
move.b  ($1234,a7),(-$1234,a6)
move.w  $1234(a7),-$1234(a6)
move.w  ($1234,a7),(-$1234,a6)
move.l  $1234(a7),-$1234(a6)
move.l  ($1234,a7),(-$1234,a6)

move    $1234(a7),d6
move    ($1234,a7),d6
move.b  $1234(a7),d6
move.b  ($1234,a7),d6
move.w  $1234(a7),d6
move.w  ($1234,a7),d6
move.l  $1234(a7),d6
move.l  ($1234,a7),d6

move    d7,$1234(a6)
move    d7,($1234,a6)
move.b  d7,$1234(a6)
move.b  d7,($1234,a6)
move.w  d7,$1234(a6)
move.w  d7,($1234,a6)
move.l  d7,$1234(a6)
move.l  d7,($1234,a6)


move    MOVEPCL1(pc,d7.l),(-$12345678).l
move    (MOVEPCL1,pc,d7.l),(-$12345678).l
move.b  MOVEPCL1(pc,d7.l),(-$12345678).l
move.b  (MOVEPCL1,pc,d7.l),(-$12345678).l
move.w  MOVEPCL1(pc,d7.l),(-$12345678).l
move.w  (MOVEPCL1,pc,d7.l),(-$12345678).l
move.l  MOVEPCL1(pc,d7.l),(-$12345678).l
move.l  (MOVEPCL1,pc,d7.l),(-$12345678).l

move    MOVEPCL1(pc,d7.l),(-$1234).w
move    (MOVEPCL1,pc,d7.l),(-$1234).w
move.b  MOVEPCL1(pc,d7.l),(-$1234).w
move.b  (MOVEPCL1,pc,d7.l),(-$1234).w
move.w  MOVEPCL1(pc,d7.l),(-$1234).w
move.w  (MOVEPCL1,pc,d7.l),(-$1234).w
move.l  MOVEPCL1(pc,d7.l),(-$1234).w
move.l  (MOVEPCL1,pc,d7.l),(-$1234).w

MOVEPCL1:
move    MOVEPCL1(pc,d7.l),(a6)
move    (MOVEPCL1,pc,d7.l),(a6)
move.b  MOVEPCL1(pc,d7.l),(a6)
move.b  (MOVEPCL1,pc,d7.l),(a6)
move.w  MOVEPCL1(pc,d7.l),(a6)
move.w  (MOVEPCL1,pc,d7.l),(a6)
move.l  MOVEPCL1(pc,d7.l),(a6)
move.l  (MOVEPCL1,pc,d7.l),(a6)

move    MOVEPCL1(pc,d7.l),(a6)+
move    (MOVEPCL1,pc,d7.l),(a6)+
move.b  MOVEPCL1(pc,d7.l),(a6)+
move.b  (MOVEPCL1,pc,d7.l),(a6)+
move.w  MOVEPCL1(pc,d7.l),(a6)+
move.w  (MOVEPCL1,pc,d7.l),(a6)+
move.l  MOVEPCL1(pc,d7.l),(a6)+
move.l  (MOVEPCL1,pc,d7.l),(a6)+

move    MOVEPCL2(pc,d7.l),-(a6)
move    (MOVEPCL2,pc,d7.l),-(a6)
move.b  MOVEPCL2(pc,d7.l),-(a6)
move.b  (MOVEPCL2,pc,d7.l),-(a6)
move.w  MOVEPCL2(pc,d7.l),-(a6)
move.w  (MOVEPCL2,pc,d7.l),-(a6)
move.l  MOVEPCL2(pc,d7.l),-(a6)
move.l  (MOVEPCL2,pc,d7.l),-(a6)

move    MOVEPCL2(pc,d7.l),-$12(a6,d5.l)
move    (MOVEPCL2,pc,d7.l),(-$12,a6,d5.l)
move.b  MOVEPCL2(pc,d7.l),-$12(a6,d5.l)
move.b  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.l)
move.w  MOVEPCL2(pc,d7.l),-$12(a6,d5.l)
move.w  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.l)
move.l  MOVEPCL2(pc,d7.l),-$12(a6,d5.l)
move.l  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.l)

move    MOVEPCL2(pc,d7.l),-$12(a6,d5.w)
move    (MOVEPCL2,pc,d7.l),(-$12,a6,d5.w)
move.b  MOVEPCL2(pc,d7.l),-$12(a6,d5.w)
move.b  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.w)
move.w  MOVEPCL2(pc,d7.l),-$12(a6,d5.w)
move.w  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.w)
move.l  MOVEPCL2(pc,d7.l),-$12(a6,d5.w)
move.l  (MOVEPCL2,pc,d7.l),(-$12,a6,d5.w)

MOVEPCL2:
move    MOVEPCL2(pc,d7.l),-$12(a6,d5)
move    (MOVEPCL2,pc,d7.l),(-$12,a6,d5)
move.b  MOVEPCL2(pc,d7.l),-$12(a6,d5)
move.b  (MOVEPCL2,pc,d7.l),(-$12,a6,d5)
move.w  MOVEPCL2(pc,d7.l),-$12(a6,d5)
move.w  (MOVEPCL2,pc,d7.l),(-$12,a6,d5)
move.l  MOVEPCL2(pc,d7.l),-$12(a6,d5)
move.l  (MOVEPCL2,pc,d7.l),(-$12,a6,d5)

move    MOVEPCL2(pc,d7.l),-$1234(a6)
move    (MOVEPCL2,pc,d7.l),(-$1234,a6)
move.b  MOVEPCL2(pc,d7.l),-$1234(a6)
move.b  (MOVEPCL2,pc,d7.l),(-$1234,a6)
move.w  MOVEPCL2(pc,d7.l),-$1234(a6)
move.w  (MOVEPCL2,pc,d7.l),(-$1234,a6)
move.l  MOVEPCL2(pc,d7.l),-$1234(a6)
move.l  (MOVEPCL2,pc,d7.l),(-$1234,a6)

move    MOVEPCL2(pc,d7.l),d6
move    (MOVEPCL2,pc,d7.l),d6
move.b  MOVEPCL2(pc,d7.l),d6
move.b  (MOVEPCL2,pc,d7.l),d6
move.w  MOVEPCL2(pc,d7.l),d6
move.w  (MOVEPCL2,pc,d7.l),d6
move.l  MOVEPCL2(pc,d7.l),d6
move.l  (MOVEPCL2,pc,d7.l),d6


move    MOVEPCW1(pc,d7.w),(-$12345678).l
move    (MOVEPCW1,pc,d7.w),(-$12345678).l
move.b  MOVEPCW1(pc,d7.w),(-$12345678).l
move.b  (MOVEPCW1,pc,d7.w),(-$12345678).l
move.w  MOVEPCW1(pc,d7.w),(-$12345678).l
move.w  (MOVEPCW1,pc,d7.w),(-$12345678).l
move.l  MOVEPCW1(pc,d7.w),(-$12345678).l
move.l  (MOVEPCW1,pc,d7.w),(-$12345678).l

move    MOVEPCW1(pc,d7.w),(-$1234).w
move    (MOVEPCW1,pc,d7.w),(-$1234).w
move.b  MOVEPCW1(pc,d7.w),(-$1234).w
move.b  (MOVEPCW1,pc,d7.w),(-$1234).w
move.w  MOVEPCW1(pc,d7.w),(-$1234).w
move.w  (MOVEPCW1,pc,d7.w),(-$1234).w
move.l  MOVEPCW1(pc,d7.w),(-$1234).w
move.l  (MOVEPCW1,pc,d7.w),(-$1234).w

MOVEPCW1:
move    MOVEPCW1(pc,d7.w),(a6)
move    (MOVEPCW1,pc,d7.w),(a6)
move.b  MOVEPCW1(pc,d7.w),(a6)
move.b  (MOVEPCW1,pc,d7.w),(a6)
move.w  MOVEPCW1(pc,d7.w),(a6)
move.w  (MOVEPCW1,pc,d7.w),(a6)
move.l  MOVEPCW1(pc,d7.w),(a6)
move.l  (MOVEPCW1,pc,d7.w),(a6)

move    MOVEPCW1(pc,d7.w),(a6)+
move    (MOVEPCW1,pc,d7.w),(a6)+
move.b  MOVEPCW1(pc,d7.w),(a6)+
move.b  (MOVEPCW1,pc,d7.w),(a6)+
move.w  MOVEPCW1(pc,d7.w),(a6)+
move.w  (MOVEPCW1,pc,d7.w),(a6)+
move.l  MOVEPCW1(pc,d7.w),(a6)+
move.l  (MOVEPCW1,pc,d7.w),(a6)+

move    MOVEPCW2(pc,d7.w),-(a6)
move    (MOVEPCW2,pc,d7.w),-(a6)
move.b  MOVEPCW2(pc,d7.w),-(a6)
move.b  (MOVEPCW2,pc,d7.w),-(a6)
move.w  MOVEPCW2(pc,d7.w),-(a6)
move.w  (MOVEPCW2,pc,d7.w),-(a6)
move.l  MOVEPCW2(pc,d7.w),-(a6)
move.l  (MOVEPCW2,pc,d7.w),-(a6)

move    MOVEPCW2(pc,d7.w),-$12(a6,d5.l)
move    (MOVEPCW2,pc,d7.w),(-$12,a6,d5.l)
move.b  MOVEPCW2(pc,d7.w),-$12(a6,d5.l)
move.b  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.l)
move.w  MOVEPCW2(pc,d7.w),-$12(a6,d5.l)
move.w  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.l)
move.l  MOVEPCW2(pc,d7.w),-$12(a6,d5.l)
move.l  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.l)

move    MOVEPCW2(pc,d7.w),-$12(a6,d5.w)
move    (MOVEPCW2,pc,d7.w),(-$12,a6,d5.w)
move.b  MOVEPCW2(pc,d7.w),-$12(a6,d5.w)
move.b  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.w)
move.w  MOVEPCW2(pc,d7.w),-$12(a6,d5.w)
move.w  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.w)
move.l  MOVEPCW2(pc,d7.w),-$12(a6,d5.w)
move.l  (MOVEPCW2,pc,d7.w),(-$12,a6,d5.w)

MOVEPCW2:
move    MOVEPCW2(pc,d7.w),-$12(a6,d5)
move    (MOVEPCW2,pc,d7.w),(-$12,a6,d5)
move.b  MOVEPCW2(pc,d7.w),-$12(a6,d5)
move.b  (MOVEPCW2,pc,d7.w),(-$12,a6,d5)
move.w  MOVEPCW2(pc,d7.w),-$12(a6,d5)
move.w  (MOVEPCW2,pc,d7.w),(-$12,a6,d5)
move.l  MOVEPCW2(pc,d7.w),-$12(a6,d5)
move.l  (MOVEPCW2,pc,d7.w),(-$12,a6,d5)

move    MOVEPCW2(pc,d7.w),-$1234(a6)
move    (MOVEPCW2,pc,d7.w),(-$1234,a6)
move.b  MOVEPCW2(pc,d7.w),-$1234(a6)
move.b  (MOVEPCW2,pc,d7.w),(-$1234,a6)
move.w  MOVEPCW2(pc,d7.w),-$1234(a6)
move.w  (MOVEPCW2,pc,d7.w),(-$1234,a6)
move.l  MOVEPCW2(pc,d7.w),-$1234(a6)
move.l  (MOVEPCW2,pc,d7.w),(-$1234,a6)

move    MOVEPCW2(pc,d7.w),d6
move    (MOVEPCW2,pc,d7.w),d6
move.b  MOVEPCW2(pc,d7.w),d6
move.b  (MOVEPCW2,pc,d7.w),d6
move.w  MOVEPCW2(pc,d7.w),d6
move.w  (MOVEPCW2,pc,d7.w),d6
move.l  MOVEPCW2(pc,d7.w),d6
move.l  (MOVEPCW2,pc,d7.w),d6


move    MOVEPC1(pc,d7),(-$12345678).l
move    (MOVEPC1,pc,d7),(-$12345678).l
move.b  MOVEPC1(pc,d7),(-$12345678).l
move.b  (MOVEPC1,pc,d7),(-$12345678).l
move.w  MOVEPC1(pc,d7),(-$12345678).l
move.w  (MOVEPC1,pc,d7),(-$12345678).l
move.l  MOVEPC1(pc,d7),(-$12345678).l
move.l  (MOVEPC1,pc,d7),(-$12345678).l

move    MOVEPC1(pc,d7),(-$1234).w
move    (MOVEPC1,pc,d7),(-$1234).w
move.b  MOVEPC1(pc,d7),(-$1234).w
move.b  (MOVEPC1,pc,d7),(-$1234).w
move.w  MOVEPC1(pc,d7),(-$1234).w
move.w  (MOVEPC1,pc,d7),(-$1234).w
move.l  MOVEPC1(pc,d7),(-$1234).w
move.l  (MOVEPC1,pc,d7),(-$1234).w

MOVEPC1:
move    MOVEPC1(pc,d7),(a6)
move    (MOVEPC1,pc,d7),(a6)
move.b  MOVEPC1(pc,d7),(a6)
move.b  (MOVEPC1,pc,d7),(a6)
move.w  MOVEPC1(pc,d7),(a6)
move.w  (MOVEPC1,pc,d7),(a6)
move.l  MOVEPC1(pc,d7),(a6)
move.l  (MOVEPC1,pc,d7),(a6)

move    MOVEPC1(pc,d7),(a6)+
move    (MOVEPC1,pc,d7),(a6)+
move.b  MOVEPC1(pc,d7),(a6)+
move.b  (MOVEPC1,pc,d7),(a6)+
move.w  MOVEPC1(pc,d7),(a6)+
move.w  (MOVEPC1,pc,d7),(a6)+
move.l  MOVEPC1(pc,d7),(a6)+
move.l  (MOVEPC1,pc,d7),(a6)+

move    MOVEPC2(pc,d7),-(a6)
move    (MOVEPC2,pc,d7),-(a6)
move.b  MOVEPC2(pc,d7),-(a6)
move.b  (MOVEPC2,pc,d7),-(a6)
move.w  MOVEPC2(pc,d7),-(a6)
move.w  (MOVEPC2,pc,d7),-(a6)
move.l  MOVEPC2(pc,d7),-(a6)
move.l  (MOVEPC2,pc,d7),-(a6)

move    MOVEPC2(pc,d7),-$12(a6,d5.l)
move    (MOVEPC2,pc,d7),(-$12,a6,d5.l)
move.b  MOVEPC2(pc,d7),-$12(a6,d5.l)
move.b  (MOVEPC2,pc,d7),(-$12,a6,d5.l)
move.w  MOVEPC2(pc,d7),-$12(a6,d5.l)
move.w  (MOVEPC2,pc,d7),(-$12,a6,d5.l)
move.l  MOVEPC2(pc,d7),-$12(a6,d5.l)
move.l  (MOVEPC2,pc,d7),(-$12,a6,d5.l)

move    MOVEPC2(pc,d7),-$12(a6,d5.w)
move    (MOVEPC2,pc,d7),(-$12,a6,d5.w)
move.b  MOVEPC2(pc,d7),-$12(a6,d5.w)
move.b  (MOVEPC2,pc,d7),(-$12,a6,d5.w)
move.w  MOVEPC2(pc,d7),-$12(a6,d5.w)
move.w  (MOVEPC2,pc,d7),(-$12,a6,d5.w)
move.l  MOVEPC2(pc,d7),-$12(a6,d5.w)
move.l  (MOVEPC2,pc,d7),(-$12,a6,d5.w)

MOVEPC2:
move    MOVEPC2(pc,d7),-$12(a6,d5)
move    (MOVEPC2,pc,d7),(-$12,a6,d5)
move.b  MOVEPC2(pc,d7),-$12(a6,d5)
move.b  (MOVEPC2,pc,d7),(-$12,a6,d5)
move.w  MOVEPC2(pc,d7),-$12(a6,d5)
move.w  (MOVEPC2,pc,d7),(-$12,a6,d5)
move.l  MOVEPC2(pc,d7),-$12(a6,d5)
move.l  (MOVEPC2,pc,d7),(-$12,a6,d5)

move    MOVEPC2(pc,d7),-$1234(a6)
move    (MOVEPC2,pc,d7),(-$1234,a6)
move.b  MOVEPC2(pc,d7),-$1234(a6)
move.b  (MOVEPC2,pc,d7),(-$1234,a6)
move.w  MOVEPC2(pc,d7),-$1234(a6)
move.w  (MOVEPC2,pc,d7),(-$1234,a6)
move.l  MOVEPC2(pc,d7),-$1234(a6)
move.l  (MOVEPC2,pc,d7),(-$1234,a6)

move    MOVEPC2(pc,d7),d6
move    (MOVEPC2,pc,d7),d6
move.b  MOVEPC2(pc,d7),d6
move.b  (MOVEPC2,pc,d7),d6
move.w  MOVEPC2(pc,d7),d6
move.w  (MOVEPC2,pc,d7),d6
move.l  MOVEPC2(pc,d7),d6
move.l  (MOVEPC2,pc,d7),d6


move    $1234(pc),(-$12345678).l
move    ($1234,pc),(-$12345678).l
move.b  $1234(pc),(-$12345678).l
move.b  ($1234,pc),(-$12345678).l
move.w  $1234(pc),(-$12345678).l
move.w  ($1234,pc),(-$12345678).l
move.l  $1234(pc),(-$12345678).l
move.l  ($1234,pc),(-$12345678).l

move    $1234(pc),(-$1234).w
move    ($1234,pc),(-$1234).w
move.b  $1234(pc),(-$1234).w
move.b  ($1234,pc),(-$1234).w
move.w  $1234(pc),(-$1234).w
move.w  ($1234,pc),(-$1234).w
move.l  $1234(pc),(-$1234).w
move.l  ($1234,pc),(-$1234).w

move    $1234(pc),(a7)
move    ($1234,pc),(a7)
move.b  $1234(pc),(a7)
move.b  ($1234,pc),(a7)
move.w  $1234(pc),(a7)
move.w  ($1234,pc),(a7)
move.l  $1234(pc),(a7)
move.l  ($1234,pc),(a7)

move    $1234(pc),(a7)+
move    ($1234,pc),(a7)+
move.b  $1234(pc),(a7)+
move.b  ($1234,pc),(a7)+
move.w  $1234(pc),(a7)+
move.w  ($1234,pc),(a7)+
move.l  $1234(pc),(a7)+
move.l  ($1234,pc),(a7)+

move    $1234(pc),-(a7)
move    ($1234,pc),-(a7)
move.b  $1234(pc),-(a7)
move.b  ($1234,pc),-(a7)
move.w  $1234(pc),-(a7)
move.w  ($1234,pc),-(a7)
move.l  $1234(pc),-(a7)
move.l  ($1234,pc),-(a7)

move    $1234(pc),-$12(a7,d6.l)
move    ($1234,pc),(-$12,a7,d6.l)
move.b  $1234(pc),-$12(a7,d6.l)
move.b  ($1234,pc),(-$12,a7,d6.l)
move.w  $1234(pc),-$12(a7,d6.l)
move.w  ($1234,pc),(-$12,a7,d6.l)
move.l  $1234(pc),-$12(a7,d6.l)
move.l  ($1234,pc),(-$12,a7,d6.l)

move    $1234(pc),-$12(a7,d6.w)
move    ($1234,pc),(-$12,a7,d6.w)
move.b  $1234(pc),-$12(a7,d6.w)
move.b  ($1234,pc),(-$12,a7,d6.w)
move.w  $1234(pc),-$12(a7,d6.w)
move.w  ($1234,pc),(-$12,a7,d6.w)
move.l  $1234(pc),-$12(a7,d6.w)
move.l  ($1234,pc),(-$12,a7,d6.w)

move    $1234(pc),-$12(a7,d6)
move    ($1234,pc),(-$12,a7,d6)
move.b  $1234(pc),-$12(a7,d6)
move.b  ($1234,pc),(-$12,a7,d6)
move.w  $1234(pc),-$12(a7,d6)
move.w  ($1234,pc),(-$12,a7,d6)
move.l  $1234(pc),-$12(a7,d6)
move.l  ($1234,pc),(-$12,a7,d6)

move    $1234(pc),-$1234(a7)
move    ($1234,pc),(-$1234,a7)
move.b  $1234(pc),-$1234(a7)
move.b  ($1234,pc),(-$1234,a7)
move.w  $1234(pc),-$1234(a7)
move.w  ($1234,pc),(-$1234,a7)
move.l  $1234(pc),-$1234(a7)
move.l  ($1234,pc),(-$1234,a7)

move    $1234(pc),d7
move    ($1234,pc),d7
move.b  $1234(pc),d7
move.b  ($1234,pc),d7
move.w  $1234(pc),d7
move.w  ($1234,pc),d7
move.l  $1234(pc),d7
move.l  ($1234,pc),d7

move    d7,d6
move.b  d7,d6
move.w  d7,d6
move.l  d7,d6


move    a7,(-$12345678).l
//move.b  a7,(-$12345678).l // Illegal Addressing Mode
move.w  a7,(-$12345678).l
move.l  a7,(-$12345678).l

move    a7,(-$1234).w
//move.b  a7,(-$1234).w // Illegal Addressing Mode
move.w  a7,(-$1234).w
move.l  a7,(-$1234).w

move    a7,(a6)
//move.b  a7,(a6) // Illegal Addressing Mode
move.w  a7,(a6)
move.l  a7,(a6)

move    a7,(a6)+
//move.b  a7,(a6)+ // Illegal Addressing Mode
move.w  a7,(a6)+
move.l  a7,(a6)+

move    a7,-(a6)
//move.b  a7,-(a6) // Illegal Addressing Mode
move.w  a7,-(a6)
move.l  a7,-(a6)

move    a7,-$12(a6,d5.l)
move    a7,(-$12,a6,d5.l)
//move.b  a7,-$12(a6,d5.l)  // Illegal Addressing Mode
//move.b  a7,(-$12,a6,d5.l) // Illegal Addressing Mode
move.w  a7,-$12(a6,d5.l)
move.w  a7,(-$12,a6,d5.l)
move.l  a7,-$12(a6,d5.l)
move.l  a7,(-$12,a6,d5.l)

move    a7,-$12(a6,d5.w)
move    a7,(-$12,a6,d5.w)
//move.b  a7,-$12(a6,d5.w)  // Illegal Addressing Mode
//move.b  a7,(-$12,a6,d5.w) // Illegal Addressing Mode
move.w  a7,-$12(a6,d5.w)
move.w  a7,(-$12,a6,d5.w)
move.l  a7,-$12(a6,d5.w)
move.l  a7,(-$12,a6,d5.w)

move    a7,-$12(a6,d5)
move    a7,(-$12,a6,d5)
//move.b  a7,-$12(a6,d5)  // Illegal Addressing Mode
//move.b  a7,(-$12,a6,d5) // Illegal Addressing Mode
move.w  a7,-$12(a6,d5)
move.w  a7,(-$12,a6,d5)
move.l  a7,-$12(a6,d5)
move.l  a7,(-$12,a6,d5)

move    a7,-$1234(a6)
move    a7,(-$1234,a6)
//move.b  a7,-$1234(a6)  // Illegal Addressing Mode
//move.b  a7,(-$1234,a6) // Illegal Addressing Mode
move.w  a7,-$1234(a6)
move.w  a7,(-$1234,a6)
move.l  a7,-$1234(a6)
move.l  a7,(-$1234,a6)

move    a7,d6
//move.b  a7,d6 // Illegal Addressing Mode
move.w  a7,d6
move.l  a7,d6


move    d7,a6
movea   d7,a6
//move.b  d7,a6 // Illegal Addressing Mode
//movea.b d7,a6 // Illegal Addressing Mode
move.w  d7,a6
movea.w d7,a6
move.l  d7,a6
movea.l d7,a6

move    a7,a6
movea   a7,a6
//move.b  a7,a6 // Illegal Addressing Mode
//movea.b a7,a6 // Illegal Addressing Mode
move.w  a7,a6
movea.w a7,a6
move.l  a7,a6
movea.l a7,a6

move    (a7),a6
movea   (a7),a6
//move.b  (a7),a6 // Illegal Addressing Mode
//movea.b (a7),a6 // Illegal Addressing Mode
move.w  (a7),a6
movea.w (a7),a6
move.l  (a7),a6
movea.l (a7),a6

move    (a7)+,a6
movea   (a7)+,a6
//move.b  (a7)+,a6 // Illegal Addressing Mode
//movea.b (a7)+,a6 // Illegal Addressing Mode
move.w  (a7)+,a6
movea.w (a7)+,a6
move.l  (a7)+,a6
movea.l (a7)+,a6

move    -(a7),a6
movea   -(a7),a6
//move.b  -(a7),a6 // Illegal Addressing Mode
//movea.b -(a7),a6 // Illegal Addressing Mode
move.w  -(a7),a6
movea.w -(a7),a6
move.l  -(a7),a6
movea.l -(a7),a6


move    ($12345678).l,a7
movea   ($12345678).l,a7
//move.b  ($12345678).l,a7 // Illegal Addressing Mode
//movea.b ($12345678).l,a7 // Illegal Addressing Mode
move.w  ($12345678).l,a7
movea.w ($12345678).l,a7
move.l  ($12345678).l,a7
movea.l ($12345678).l,a7

move    ($1234).w,a7
movea   ($1234).w,a7
//move.b  ($1234).w,a7 // Illegal Addressing Mode
//movea.b ($1234).w,a7 // Illegal Addressing Mode
move.w  ($1234).w,a7
movea.w ($1234).w,a7
move.l  ($1234).w,a7
movea.l ($1234).w,a7

move    $12(a7,d6.l),a5
move    ($12,a7,d6.l),a5
movea   $12(a7,d6.l),a5
movea   ($12,a7,d6.l),a5
//move.b  $12(a7,d6.l),a5  // Illegal Addressing Mode
//move.b  ($12,a7,d6.l),a5 // Illegal Addressing Mode
//movea.b $12(a7,d6.l),a5  // Illegal Addressing Mode
//movea.b ($12,a7,d6.l),a5 // Illegal Addressing Mode
move.w  $12(a7,d6.l),a5
move.w  ($12,a7,d6.l),a5
movea.w $12(a7,d6.l),a5
movea.w ($12,a7,d6.l),a5
move.l  $12(a7,d6.l),a5
move.l  ($12,a7,d6.l),a5
movea.l $12(a7,d6.l),a5
movea.l ($12,a7,d6.l),a5

move    $12(a7,d6.w),a5
move    ($12,a7,d6.w),a5
movea   $12(a7,d6.w),a5
movea   ($12,a7,d6.w),a5
//move.b  $12(a7,d6.w),a5  // Illegal Addressing Mode
//move.b  ($12,a7,d6.w),a5 // Illegal Addressing Mode
//movea.b $12(a7,d6.w),a5  // Illegal Addressing Mode
//movea.b ($12,a7,d6.w),a5 // Illegal Addressing Mode
move.w  $12(a7,d6.w),a5
move.w  ($12,a7,d6.w),a5
movea.w $12(a7,d6.w),a5
movea.w ($12,a7,d6.w),a5
move.l  $12(a7,d6.w),a5
move.l  ($12,a7,d6.w),a5
movea.l $12(a7,d6.w),a5
movea.l ($12,a7,d6.w),a5

move    $12(a7,d6),a5
move    ($12,a7,d6),a5
movea   $12(a7,d6),a5
movea   ($12,a7,d6),a5
//move.b  $12(a7,d6),a5  // Illegal Addressing Mode
//move.b  ($12,a7,d6),a5 // Illegal Addressing Mode
//movea.b $12(a7,d6),a5  // Illegal Addressing Mode
//movea.b ($12,a7,d6),a5 // Illegal Addressing Mode
move.w  $12(a7,d6),a5
move.w  ($12,a7,d6),a5
movea.w $12(a7,d6),a5
movea.w ($12,a7,d6),a5
move.l  $12(a7,d6),a5
move.l  ($12,a7,d6),a5
movea.l $12(a7,d6),a5
movea.l ($12,a7,d6),a5

move    $1234(a7),a6
move    ($1234,a7),a6
movea   $1234(a7),a6
movea   ($1234,a7),a6
//move.b  $1234(a7),a6  // Illegal Addressing Mode
//move.b  ($1234,a7),a6 // Illegal Addressing Mode
//movea.b $1234(a7),a6  // Illegal Addressing Mode
//movea.b ($1234,a7),a6 // Illegal Addressing Mode
move.w  $1234(a7),a6
move.w  ($1234,a7),a6
movea.w $1234(a7),a6
movea.w ($1234,a7),a6
move.l  $1234(a7),a6
move.l  ($1234,a7),a6
movea.l $1234(a7),a6
movea.l ($1234,a7),a6


move    MOVEAPC(pc,d7.l),a6
move    (MOVEAPC,pc,d7.l),a6
movea   MOVEAPC(pc,d7.l),a6
movea   (MOVEAPC,pc,d7.l),a6
//move.b  MOVEAPC(pc,d7.l),a6  // Illegal Addressing Mode
//move.b  (MOVEAPC,pc,d7.l),a6 // Illegal Addressing Mode
//movea.b MOVEAPC(pc,d7.l),a6  // Illegal Addressing Mode
//movea.b (MOVEAPC,pc,d7.l),a6 // Illegal Addressing Mode
move.w  MOVEAPC(pc,d7.l),a6
move.w  (MOVEAPC,pc,d7.l),a6
movea.w MOVEAPC(pc,d7.l),a6
movea.w (MOVEAPC,pc,d7.l),a6
move.l  MOVEAPC(pc,d7.l),a6
move.l  (MOVEAPC,pc,d7.l),a6
movea.l MOVEAPC(pc,d7.l),a6
movea.l (MOVEAPC,pc,d7.l),a6

move    MOVEAPC(pc,d7.w),a6
move    (MOVEAPC,pc,d7.w),a6
movea   MOVEAPC(pc,d7.w),a6
movea   (MOVEAPC,pc,d7.w),a6
//move.b  MOVEAPC(pc,d7.w),a6  // Illegal Addressing Mode
//move.b  (MOVEAPC,pc,d7.w),a6 // Illegal Addressing Mode
//movea.b MOVEAPC(pc,d7.w),a6  // Illegal Addressing Mode
//movea.b (MOVEAPC,pc,d7.w),a6 // Illegal Addressing Mode
move.w  MOVEAPC(pc,d7.w),a6
move.w  (MOVEAPC,pc,d7.w),a6
movea.w MOVEAPC(pc,d7.w),a6
movea.w (MOVEAPC,pc,d7.w),a6
move.l  MOVEAPC(pc,d7.w),a6
move.l  (MOVEAPC,pc,d7.w),a6
movea.l MOVEAPC(pc,d7.w),a6
movea.l (MOVEAPC,pc,d7.w),a6

MOVEAPC:
move    MOVEAPC(pc,d7),a6
move    (MOVEAPC,pc,d7),a6
movea   MOVEAPC(pc,d7),a6
movea   (MOVEAPC,pc,d7),a6
//move.b  MOVEAPC(pc,d7),a6  // Illegal Addressing Mode
//move.b  (MOVEAPC,pc,d7),a6 // Illegal Addressing Mode
//movea.b MOVEAPC(pc,d7),a6  // Illegal Addressing Mode
//movea.b (MOVEAPC,pc,d7),a6 // Illegal Addressing Mode
move.w  MOVEAPC(pc,d7),a6
move.w  (MOVEAPC,pc,d7),a6
movea.w MOVEAPC(pc,d7),a6
movea.w (MOVEAPC,pc,d7),a6
move.l  MOVEAPC(pc,d7),a6
move.l  (MOVEAPC,pc,d7),a6
movea.l MOVEAPC(pc,d7),a6
movea.l (MOVEAPC,pc,d7),a6

move    $1234(pc),a7
move    ($1234,pc),a7
movea   $1234(pc),a7
movea   ($1234,pc),a7
//move.b  $1234(pc),a7  // Illegal Addressing Mode
//move.b  ($1234,pc),a7 // Illegal Addressing Mode
//movea.b $1234(pc),a7  // Illegal Addressing Mode
//movea.b ($1234,pc),a7 // Illegal Addressing Mode
move.w  $1234(pc),a7
move.w  ($1234,pc),a7
movea.w $1234(pc),a7
movea.w ($1234,pc),a7
move.l  $1234(pc),a7
move.l  ($1234,pc),a7
movea.l $1234(pc),a7
movea.l ($1234,pc),a7


move    #$FEDC,($12345678).l
move.b  #$FE,($12345678).l
move.w  #$FEDC,($12345678).l
move.l  #$FEDCBA98,($12345678).l

move    #$FEDC,($1234).w
move.b  #$FE,($1234).w
move.w  #$FEDC,($1234).w
move.l  #$FEDCBA98,($1234).w

move    #$FEDC,(a7)
move.b  #$FE,(a7)
move.w  #$FEDC,(a7)
move.l  #$FEDCBA98,(a7)

move    #$FEDC,(a7)+
move.b  #$FE,(a7)+
move.w  #$FEDC,(a7)+
move.l  #$FEDCBA98,(a7)+

move    #$FEDC,-(a7)
move.b  #$FE,-(a7)
move.w  #$FEDC,-(a7)
move.l  #$FEDCBA98,-(a7)

move    #$FEDC,$12(a7,d6.l)
move    #$FEDC,($12,a7,d6.l)
move.b  #$FE,$12(a7,d6.l)
move.b  #$FE,($12,a7,d6.l)
move.w  #$FEDC,$12(a7,d6.l)
move.w  #$FEDC,($12,a7,d6.l)
move.l  #$FEDCBA98,$12(a7,d6.l)
move.l  #$FEDCBA98,($12,a7,d6.l)

move    #$FEDC,$12(a7,d6.w)
move    #$FEDC,($12,a7,d6.w)
move.b  #$FE,$12(a7,d6.w)
move.b  #$FE,($12,a7,d6.w)
move.w  #$FEDC,$12(a7,d6.w)
move.w  #$FEDC,($12,a7,d6.w)
move.l  #$FEDCBA98,$12(a7,d6.w)
move.l  #$FEDCBA98,($12,a7,d6.w)

move    #$FEDC,$12(a7,d6)
move    #$FEDC,($12,a7,d6)
move.b  #$FE,$12(a7,d6)
move.b  #$FE,($12,a7,d6)
move.w  #$FEDC,$12(a7,d6)
move.w  #$FEDC,($12,a7,d6)
move.l  #$FEDCBA98,$12(a7,d6)
move.l  #$FEDCBA98,($12,a7,d6)

move    #$FEDC,$1234(a7)
move    #$FEDC,($1234,a7)
move.b  #$FE,$1234(a7)
move.b  #$FE,($1234,a7)
move.w  #$FEDC,$1234(a7)
move.w  #$FEDC,($1234,a7)
move.l  #$FEDCBA98,$1234(a7)
move.l  #$FEDCBA98,($1234,a7)

move    #$FEDC,a7
movea   #$FEDC,a7
//move.b  #$FE,a7 // Illegal Addressing Mode
//movea.b #$FE,a7 // Illegal Addressing Mode
move.w  #$FEDC,a7
movea.w #$FEDC,a7
move.l  #$FEDCBA98,a7
movea.l #$FEDCBA98,a7

move    #$FEDC,d7
move.b  #$FE,d7
move.w  #$FEDC,d7
move.l  #$FEDCBA98,d7


move    ($12345678).l,ccr
move.w  ($12345678).l,ccr

move    ($1234).w,ccr
move.w  ($1234).w,ccr

move    (a7),ccr
move.w  (a7),ccr

move    (a7)+,ccr
move.w  (a7)+,ccr

move    -(a7),ccr
move.w  -(a7),ccr

move    $12(a7,d6.l),ccr
move    ($12,a7,d6.l),ccr
move.w  $12(a7,d6.l),ccr
move.w  ($12,a7,d6.l),ccr

move    $12(a7,d6.w),ccr
move    ($12,a7,d6.w),ccr
move.w  $12(a7,d6.w),ccr
move.w  ($12,a7,d6.w),ccr

move    $12(a7,d6),ccr
move    ($12,a7,d6),ccr
move.w  $12(a7,d6),ccr
move.w  ($12,a7,d6),ccr

move    $1234(a7),ccr
move    ($1234,a7),ccr
move.w  $1234(a7),ccr
move.w  ($1234,a7),ccr

MOVECCRPC:
move    MOVECCRPC(pc,d7.l),ccr
move    (MOVECCRPC,pc,d7.l),ccr
move.w  MOVECCRPC(pc,d7.l),ccr
move.w  (MOVECCRPC,pc,d7.l),ccr

move    MOVECCRPC(pc,d7.w),ccr
move    (MOVECCRPC,pc,d7.w),ccr
move.w  MOVECCRPC(pc,d7.w),ccr
move.w  (MOVECCRPC,pc,d7.w),ccr

move    MOVECCRPC(pc,d7),ccr
move    (MOVECCRPC,pc,d7),ccr
move.w  MOVECCRPC(pc,d7),ccr
move.w  (MOVECCRPC,pc,d7),ccr

move    $1234(pc),ccr
move    ($1234,pc),ccr
move.w  $1234(pc),ccr
move.w  ($1234,pc),ccr

move    d7,ccr
move.w  d7,ccr

move    #$FEDC,ccr
move.w  #$FEDC,ccr


move    ($12345678).l,sr
move.w  ($12345678).l,sr

move    sr,($12345678).l
move.w  sr,($12345678).l

move    ($1234).w,sr
move.w  ($1234).w,sr

move    sr,($1234).w
move.w  sr,($1234).w

move    (a7),sr
move.w  (a7),sr

move    sr,(a7)
move.w  sr,(a7)

move    (a7)+,sr
move.w  (a7)+,sr

move    sr,(a7)+
move.w  sr,(a7)+

move    -(a7),sr
move.w  -(a7),sr

move    sr,-(a7)
move.w  sr,-(a7)

move    $12(a7,d6.l),sr
move    ($12,a7,d6.l),sr
move.w  $12(a7,d6.l),sr
move.w  ($12,a7,d6.l),sr

move    sr,$12(a7,d6.l)
move    sr,($12,a7,d6.l)
move.w  sr,$12(a7,d6.l)
move.w  sr,($12,a7,d6.l)

move    $12(a7,d6.w),sr
move    ($12,a7,d6.w),sr
move.w  $12(a7,d6.w),sr
move.w  ($12,a7,d6.w),sr

move    sr,$12(a7,d6.w)
move    sr,($12,a7,d6.w)
move.w  sr,$12(a7,d6.w)
move.w  sr,($12,a7,d6.w)

move    $12(a7,d6),sr
move    ($12,a7,d6),sr
move.w  $12(a7,d6),sr
move.w  ($12,a7,d6),sr

move    sr,$12(a7,d6)
move    sr,($12,a7,d6)
move.w  sr,$12(a7,d6)
move.w  sr,($12,a7,d6)

move    $1234(a7),sr
move    ($1234,a7),sr
move.w  $1234(a7),sr
move.w  ($1234,a7),sr

move    sr,$1234(a7)
move    sr,($1234,a7)
move.w  sr,$1234(a7)
move.w  sr,($1234,a7)

MOVESRPC:
move    MOVESRPC(pc,d7.l),sr
move    (MOVESRPC,pc,d7.l),sr
move.w  MOVESRPC(pc,d7.l),sr
move.w  (MOVESRPC,pc,d7.l),sr

move    MOVESRPC(pc,d7.w),sr
move    (MOVESRPC,pc,d7.w),sr
move.w  MOVESRPC(pc,d7.w),sr
move.w  (MOVESRPC,pc,d7.w),sr

move    MOVESRPC(pc,d7),sr
move    (MOVESRPC,pc,d7),sr
move.w  MOVESRPC(pc,d7),sr
move.w  (MOVESRPC,pc,d7),sr

move    $1234(pc),sr
move    ($1234,pc),sr
move.w  $1234(pc),sr
move.w  ($1234,pc),sr

move    d7,sr
move.w  d7,sr

move    sr,d7
move.w  sr,d7

move    #$FEDC,sr
move.w  #$FEDC,sr


move    (a7),-$1234.w
move.b  (a7),-$1234.w
move.w  (a7),-$1234.w
move.l  (a7),-$1234.w

move    (a7),-$12345678.l
move.b  (a7),-$12345678.l
move.w  (a7),-$12345678.l
move.l  (a7),-$12345678.l

move    (a7),-$12345678
move.b  (a7),-$12345678
move.w  (a7),-$12345678
move.l  (a7),-$12345678

move    (a7)+,-$1234.w
move.b  (a7)+,-$1234.w
move.w  (a7)+,-$1234.w
move.l  (a7)+,-$1234.w

move    (a7)+,-$12345678.l
move.b  (a7)+,-$12345678.l
move.w  (a7)+,-$12345678.l
move.l  (a7)+,-$12345678.l

move    (a7)+,-$12345678
move.b  (a7)+,-$12345678
move.w  (a7)+,-$12345678
move.l  (a7)+,-$12345678

move    -(a7),-$1234.w
move.b  -(a7),-$1234.w
move.w  -(a7),-$1234.w
move.l  -(a7),-$1234.w

move    -(a7),-$12345678.l
move.b  -(a7),-$12345678.l
move.w  -(a7),-$12345678.l
move.l  -(a7),-$12345678.l

move    -(a7),-$12345678
move.b  -(a7),-$12345678
move.w  -(a7),-$12345678
move.l  -(a7),-$12345678


move    $12(a7,d6.l),-$1234.w
move    ($12,a7,d6.l),-$1234.w
move.b  $12(a7,d6.l),-$1234.w
move.b  ($12,a7,d6.l),-$1234.w
move.w  $12(a7,d6.l),-$1234.w
move.w  ($12,a7,d6.l),-$1234.w
move.l  $12(a7,d6.l),-$1234.w
move.l  ($12,a7,d6.l),-$1234.w

move    $12(a7,d6.l),-$12345678.l
move    ($12,a7,d6.l),-$12345678.l
move.b  $12(a7,d6.l),-$12345678.l
move.b  ($12,a7,d6.l),-$12345678.l
move.w  $12(a7,d6.l),-$12345678.l
move.w  ($12,a7,d6.l),-$12345678.l
move.l  $12(a7,d6.l),-$12345678.l
move.l  ($12,a7,d6.l),-$12345678.l

move    $12(a7,d6.l),-$12345678
move    ($12,a7,d6.l),-$12345678
move.b  $12(a7,d6.l),-$12345678
move.b  ($12,a7,d6.l),-$12345678
move.w  $12(a7,d6.l),-$12345678
move.w  ($12,a7,d6.l),-$12345678
move.l  $12(a7,d6.l),-$12345678
move.l  ($12,a7,d6.l),-$12345678

move    $12(a7,d6.w),-$1234.w
move    ($12,a7,d6.w),-$1234.w
move.b  $12(a7,d6.w),-$1234.w
move.b  ($12,a7,d6.w),-$1234.w
move.w  $12(a7,d6.w),-$1234.w
move.w  ($12,a7,d6.w),-$1234.w
move.l  $12(a7,d6.w),-$1234.w
move.l  ($12,a7,d6.w),-$1234.w

move    $12(a7,d6.w),-$12345678.l
move    ($12,a7,d6.w),-$12345678.l
move.b  $12(a7,d6.w),-$12345678.l
move.b  ($12,a7,d6.w),-$12345678.l
move.w  $12(a7,d6.w),-$12345678.l
move.w  ($12,a7,d6.w),-$12345678.l
move.l  $12(a7,d6.w),-$12345678.l
move.l  ($12,a7,d6.w),-$12345678.l

move    $12(a7,d6.w),-$12345678
move    ($12,a7,d6.w),-$12345678
move.b  $12(a7,d6.w),-$12345678
move.b  ($12,a7,d6.w),-$12345678
move.w  $12(a7,d6.w),-$12345678
move.w  ($12,a7,d6.w),-$12345678
move.l  $12(a7,d6.w),-$12345678
move.l  ($12,a7,d6.w),-$12345678

move    $12(a7,d6),-$1234.w
move    ($12,a7,d6),-$1234.w
move.b  $12(a7,d6),-$1234.w
move.b  ($12,a7,d6),-$1234.w
move.w  $12(a7,d6),-$1234.w
move.w  ($12,a7,d6),-$1234.w
move.l  $12(a7,d6),-$1234.w
move.l  ($12,a7,d6),-$1234.w

move    $12(a7,d6),-$12345678.l
move    ($12,a7,d6),-$12345678.l
move.b  $12(a7,d6),-$12345678.l
move.b  ($12,a7,d6),-$12345678.l
move.w  $12(a7,d6),-$12345678.l
move.w  ($12,a7,d6),-$12345678.l
move.l  $12(a7,d6),-$12345678.l
move.l  ($12,a7,d6),-$12345678.l

move    $12(a7,d6),-$12345678
move    ($12,a7,d6),-$12345678
move.b  $12(a7,d6),-$12345678
move.b  ($12,a7,d6),-$12345678
move.w  $12(a7,d6),-$12345678
move.w  ($12,a7,d6),-$12345678
move.l  $12(a7,d6),-$12345678
move.l  ($12,a7,d6),-$12345678

move    $1234(a7),-$1234.w
move    ($1234,a7),-$1234.w
move.b  $1234(a7),-$1234.w
move.b  ($1234,a7),-$1234.w
move.w  $1234(a7),-$1234.w
move.w  ($1234,a7),-$1234.w
move.l  $1234(a7),-$1234.w
move.l  ($1234,a7),-$1234.w

move    $1234(a7),-$12345678.l
move    ($1234,a7),-$12345678.l
move.b  $1234(a7),-$12345678.l
move.b  ($1234,a7),-$12345678.l
move.w  $1234(a7),-$12345678.l
move.w  ($1234,a7),-$12345678.l
move.l  $1234(a7),-$12345678.l
move.l  ($1234,a7),-$12345678.l

move    $1234(a7),-$12345678
move    ($1234,a7),-$12345678
move.b  $1234(a7),-$12345678
move.b  ($1234,a7),-$12345678
move.w  $1234(a7),-$12345678
move.w  ($1234,a7),-$12345678
move.l  $1234(a7),-$12345678
move.l  ($1234,a7),-$12345678


move    MOVEPCLA(pc,d7.l),-$1234.w
move    (MOVEPCLA,pc,d7.l),-$1234.w
move.b  MOVEPCLA(pc,d7.l),-$1234.w
move.b  (MOVEPCLA,pc,d7.l),-$1234.w
move.w  MOVEPCLA(pc,d7.l),-$1234.w
move.w  (MOVEPCLA,pc,d7.l),-$1234.w
move.l  MOVEPCLA(pc,d7.l),-$1234.w
move.l  (MOVEPCLA,pc,d7.l),-$1234.w

MOVEPCLA:
move    MOVEPCLA(pc,d7.l),-$12345678.l
move    (MOVEPCLA,pc,d7.l),-$12345678.l
move.b  MOVEPCLA(pc,d7.l),-$12345678.l
move.b  (MOVEPCLA,pc,d7.l),-$12345678.l
move.w  MOVEPCLA(pc,d7.l),-$12345678.l
move.w  (MOVEPCLA,pc,d7.l),-$12345678.l
move.l  MOVEPCLA(pc,d7.l),-$12345678.l
move.l  (MOVEPCLA,pc,d7.l),-$12345678.l

move    MOVEPCLA(pc,d7.l),-$12345678
move    (MOVEPCLA,pc,d7.l),-$12345678
move.b  MOVEPCLA(pc,d7.l),-$12345678
move.b  (MOVEPCLA,pc,d7.l),-$12345678
move.w  MOVEPCLA(pc,d7.l),-$12345678
move.w  (MOVEPCLA,pc,d7.l),-$12345678
move.l  MOVEPCLA(pc,d7.l),-$12345678
move.l  (MOVEPCLA,pc,d7.l),-$12345678


move    MOVEPCWA(pc,d7.w),-$1234.w
move    (MOVEPCWA,pc,d7.w),-$1234.w
move.b  MOVEPCWA(pc,d7.w),-$1234.w
move.b  (MOVEPCWA,pc,d7.w),-$1234.w
move.w  MOVEPCWA(pc,d7.w),-$1234.w
move.w  (MOVEPCWA,pc,d7.w),-$1234.w
move.l  MOVEPCWA(pc,d7.w),-$1234.w
move.l  (MOVEPCWA,pc,d7.w),-$1234.w

MOVEPCWA:
move    MOVEPCWA(pc,d7.w),-$12345678.l
move    (MOVEPCWA,pc,d7.w),-$12345678.l
move.b  MOVEPCWA(pc,d7.w),-$12345678.l
move.b  (MOVEPCWA,pc,d7.w),-$12345678.l
move.w  MOVEPCWA(pc,d7.w),-$12345678.l
move.w  (MOVEPCWA,pc,d7.w),-$12345678.l
move.l  MOVEPCWA(pc,d7.w),-$12345678.l
move.l  (MOVEPCWA,pc,d7.w),-$12345678.l

move    MOVEPCWA(pc,d7.w),-$12345678
move    (MOVEPCWA,pc,d7.w),-$12345678
move.b  MOVEPCWA(pc,d7.w),-$12345678
move.b  (MOVEPCWA,pc,d7.w),-$12345678
move.w  MOVEPCWA(pc,d7.w),-$12345678
move.w  (MOVEPCWA,pc,d7.w),-$12345678
move.l  MOVEPCWA(pc,d7.w),-$12345678
move.l  (MOVEPCWA,pc,d7.w),-$12345678


move    MOVEPCA(pc,d7),-$1234.w
move    (MOVEPCA,pc,d7),-$1234.w
move.b  MOVEPCA(pc,d7),-$1234.w
move.b  (MOVEPCA,pc,d7),-$1234.w
move.w  MOVEPCA(pc,d7),-$1234.w
move.w  (MOVEPCA,pc,d7),-$1234.w
move.l  MOVEPCA(pc,d7),-$1234.w
move.l  (MOVEPCA,pc,d7),-$1234.w

MOVEPCA:
move    MOVEPCA(pc,d7),-$12345678.l
move    (MOVEPCA,pc,d7),-$12345678.l
move.b  MOVEPCA(pc,d7),-$12345678.l
move.b  (MOVEPCA,pc,d7),-$12345678.l
move.w  MOVEPCA(pc,d7),-$12345678.l
move.w  (MOVEPCA,pc,d7),-$12345678.l
move.l  MOVEPCA(pc,d7),-$12345678.l
move.l  (MOVEPCA,pc,d7),-$12345678.l

move    MOVEPCA(pc,d7),-$12345678
move    (MOVEPCA,pc,d7),-$12345678
move.b  MOVEPCA(pc,d7),-$12345678
move.b  (MOVEPCA,pc,d7),-$12345678
move.w  MOVEPCA(pc,d7),-$12345678
move.w  (MOVEPCA,pc,d7),-$12345678
move.l  MOVEPCA(pc,d7),-$12345678
move.l  (MOVEPCA,pc,d7),-$12345678


move    $1234(pc),-$1234.w
move    ($1234,pc),-$1234.w
move.b  $1234(pc),-$1234.w
move.b  ($1234,pc),-$1234.w
move.w  $1234(pc),-$1234.w
move.w  ($1234,pc),-$1234.w
move.l  $1234(pc),-$1234.w
move.l  ($1234,pc),-$1234.w

move    $1234(pc),-$12345678.l
move    ($1234,pc),-$12345678.l
move.b  $1234(pc),-$12345678.l
move.b  ($1234,pc),-$12345678.l
move.w  $1234(pc),-$12345678.l
move.w  ($1234,pc),-$12345678.l
move.l  $1234(pc),-$12345678.l
move.l  ($1234,pc),-$12345678.l

move    $1234(pc),-$12345678
move    ($1234,pc),-$12345678
move.b  $1234(pc),-$12345678
move.b  ($1234,pc),-$12345678
move.w  $1234(pc),-$12345678
move.w  ($1234,pc),-$12345678
move.l  $1234(pc),-$12345678
move.l  ($1234,pc),-$12345678


move    $1234.w,(a7)
move.b  $1234.w,(a7)
move.w  $1234.w,(a7)
move.l  $1234.w,(a7)

move    $1234.w,(a7)+
move.b  $1234.w,(a7)+
move.w  $1234.w,(a7)+
move.l  $1234.w,(a7)+

move    $1234.w,-(a7)
move.b  $1234.w,-(a7)
move.w  $1234.w,-(a7)
move.l  $1234.w,-(a7)

move    $1234.w,-$12(a7,d6.l)
move    $1234.w,(-$12,a7,d6.l)
move.b  $1234.w,-$12(a7,d6.l)
move.b  $1234.w,(-$12,a7,d6.l)
move.w  $1234.w,-$12(a7,d6.l)
move.w  $1234.w,(-$12,a7,d6.l)
move.l  $1234.w,-$12(a7,d6.l)
move.l  $1234.w,(-$12,a7,d6.l)

move    $1234.w,-$12(a7,d6.w)
move    $1234.w,(-$12,a7,d6.w)
move.b  $1234.w,-$12(a7,d6.w)
move.b  $1234.w,(-$12,a7,d6.w)
move.w  $1234.w,-$12(a7,d6.w)
move.w  $1234.w,(-$12,a7,d6.w)
move.l  $1234.w,-$12(a7,d6.w)
move.l  $1234.w,(-$12,a7,d6.w)

move    $1234.w,-$12(a7,d6)
move    $1234.w,(-$12,a7,d6)
move.b  $1234.w,-$12(a7,d6)
move.b  $1234.w,(-$12,a7,d6)
move.w  $1234.w,-$12(a7,d6)
move.w  $1234.w,(-$12,a7,d6)
move.l  $1234.w,-$12(a7,d6)
move.l  $1234.w,(-$12,a7,d6)

move    $1234.w,-$1234(a7)
move    $1234.w,(-$1234,a7)
move.b  $1234.w,-$1234(a7)
move.b  $1234.w,(-$1234,a7)
move.w  $1234.w,-$1234(a7)
move.w  $1234.w,(-$1234,a7)
move.l  $1234.w,-$1234(a7)
move.l  $1234.w,(-$1234,a7)


move    $12345678.l,(a7)
move.b  $12345678.l,(a7)
move.w  $12345678.l,(a7)
move.l  $12345678.l,(a7)

move    $12345678,(a7)
move.b  $12345678,(a7)
move.w  $12345678,(a7)
move.l  $12345678,(a7)

move    $12345678.l,(a7)+
move.b  $12345678.l,(a7)+
move.w  $12345678.l,(a7)+
move.l  $12345678.l,(a7)+

move    $12345678,(a7)+
move.b  $12345678,(a7)+
move.w  $12345678,(a7)+
move.l  $12345678,(a7)+

move    $12345678.l,-(a7)
move.b  $12345678.l,-(a7)
move.w  $12345678.l,-(a7)
move.l  $12345678.l,-(a7)

move    $12345678,-(a7)
move.b  $12345678,-(a7)
move.w  $12345678,-(a7)
move.l  $12345678,-(a7)

move    $12345678.l,-$12(a7,d6.l)
move    $12345678.l,(-$12,a7,d6.l)
move.b  $12345678.l,-$12(a7,d6.l)
move.b  $12345678.l,(-$12,a7,d6.l)
move.w  $12345678.l,-$12(a7,d6.l)
move.w  $12345678.l,(-$12,a7,d6.l)
move.l  $12345678.l,-$12(a7,d6.l)
move.l  $12345678.l,(-$12,a7,d6.l)

move    $12345678,-$12(a7,d6.l)
move    $12345678,(-$12,a7,d6.l)
move.b  $12345678,-$12(a7,d6.l)
move.b  $12345678,(-$12,a7,d6.l)
move.w  $12345678,-$12(a7,d6.l)
move.w  $12345678,(-$12,a7,d6.l)
move.l  $12345678,-$12(a7,d6.l)
move.l  $12345678,(-$12,a7,d6.l)

move    $12345678.l,-$12(a7,d6.w)
move    $12345678.l,(-$12,a7,d6.w)
move.b  $12345678.l,-$12(a7,d6.w)
move.b  $12345678.l,(-$12,a7,d6.w)
move.w  $12345678.l,-$12(a7,d6.w)
move.w  $12345678.l,(-$12,a7,d6.w)
move.l  $12345678.l,-$12(a7,d6.w)
move.l  $12345678.l,(-$12,a7,d6.w)

move    $12345678,-$12(a7,d6.w)
move    $12345678,(-$12,a7,d6.w)
move.b  $12345678,-$12(a7,d6.w)
move.b  $12345678,(-$12,a7,d6.w)
move.w  $12345678,-$12(a7,d6.w)
move.w  $12345678,(-$12,a7,d6.w)
move.l  $12345678,-$12(a7,d6.w)
move.l  $12345678,(-$12,a7,d6.w)

move    $12345678.l,-$12(a7,d6)
move    $12345678.l,(-$12,a7,d6)
move.b  $12345678.l,-$12(a7,d6)
move.b  $12345678.l,(-$12,a7,d6)
move.w  $12345678.l,-$12(a7,d6)
move.w  $12345678.l,(-$12,a7,d6)
move.l  $12345678.l,-$12(a7,d6)
move.l  $12345678.l,(-$12,a7,d6)

move    $12345678,-$12(a7,d6)
move    $12345678,(-$12,a7,d6)
move.b  $12345678,-$12(a7,d6)
move.b  $12345678,(-$12,a7,d6)
move.w  $12345678,-$12(a7,d6)
move.w  $12345678,(-$12,a7,d6)
move.l  $12345678,-$12(a7,d6)
move.l  $12345678,(-$12,a7,d6)

move    $12345678.l,-$1234(a7)
move    $12345678.l,(-$1234,a7)
move.b  $12345678.l,-$1234(a7)
move.b  $12345678.l,(-$1234,a7)
move.w  $12345678.l,-$1234(a7)
move.w  $12345678.l,(-$1234,a7)
move.l  $12345678.l,-$1234(a7)
move.l  $12345678.l,(-$1234,a7)

move    $12345678,-$1234(a7)
move    $12345678,(-$1234,a7)
move.b  $12345678,-$1234(a7)
move.b  $12345678,(-$1234,a7)
move.w  $12345678,-$1234(a7)
move.w  $12345678,(-$1234,a7)
move.l  $12345678,-$1234(a7)
move.l  $12345678,(-$1234,a7)


move.l  a7,usp

move.l  usp,a7


move    $1234.w,d7
move.b  $1234.w,d7
move.w  $1234.w,d7
move.l  $1234.w,d7

move    d7,$1234.w
move.b  d7,$1234.w
move.w  d7,$1234.w
move.l  d7,$1234.w

move    $12345678.l,d7
move.b  $12345678.l,d7
move.w  $12345678.l,d7
move.l  $12345678.l,d7

move    d7,$12345678.l
move.b  d7,$12345678.l
move.w  d7,$12345678.l
move.l  d7,$12345678.l

move    $12345678,d7
move.b  $12345678,d7
move.w  $12345678,d7
move.l  $12345678,d7

move    d7,$12345678
move.b  d7,$12345678
move.w  d7,$12345678
move.l  d7,$12345678

move    a7,-$1234.w
//move.b  a7,-$1234.w // Illegal Addressing Mode
move.w  a7,-$1234.w
move.l  a7,-$1234.w

move    a7,-$12345678.l
//move.b  a7,-$12345678.l // Illegal Addressing Mode
move.w  a7,-$12345678.l
move.l  a7,-$12345678.l

move    a7,-$12345678
//move.b  a7,-$12345678 // Illegal Addressing Mode
move.w  a7,-$12345678
move.l  a7,-$12345678

move    $1234.w,a7
movea   $1234.w,a7
//move.b  $1234.w,a7 // Illegal Addressing Mode
//movea.b $1234.w,a7 // Illegal Addressing Mode
move.w  $1234.w,a7
movea.w $1234.w,a7
move.l  $1234.w,a7
movea.l $1234.w,a7

move    $12345678.l,a7
movea   $12345678.l,a7
//move.b  $12345678.l,a7 // Illegal Addressing Mode
//movea.b $12345678.l,a7 // Illegal Addressing Mode
move.w  $12345678.l,a7
movea.w $12345678.l,a7
move.l  $12345678.l,a7
movea.l $12345678.l,a7

move    $12345678,a7
movea   $12345678,a7
//move.b  $12345678,a7 // Illegal Addressing Mode
//movea.b $12345678,a7 // Illegal Addressing Mode
move.w  $12345678,a7
movea.w $12345678,a7
move.l  $12345678,a7
movea.l $12345678,a7


move    $1234.w,ccr
move.w  $1234.w,ccr

move    $12345678.l,ccr
move.w  $12345678.l,ccr

move    $12345678,ccr
move.w  $12345678,ccr


move    $1234.w,sr
move.w  $1234.w,sr

move    sr,$1234.w
move.w  sr,$1234.w

move    $12345678.l,sr
move.w  $12345678.l,sr

move    sr,$12345678.l
move.w  sr,$12345678.l

move    $12345678,sr
move.w  $12345678,sr

move    sr,$12345678
move.w  sr,$12345678


move    #$FEDC,$1234.w
move.b  #$FE,$1234.w
move.w  #$FEDC,$1234.w
move.l  #$FEDCBA98,$1234.w

move    #$FEDC,$12345678.l
move.b  #$FE,$12345678.l
move.w  #$FEDC,$12345678.l
move.l  #$FEDCBA98,$12345678.l

move    #$FEDC,$12345678
move.b  #$FE,$12345678
move.w  #$FEDC,$12345678
move.l  #$FEDCBA98,$12345678


move    $1234.w,-$1234.w
move.b  $1234.w,-$1234.w
move.w  $1234.w,-$1234.w
move.l  $1234.w,-$1234.w

move    $1234.w,-$12345678.l
move.b  $1234.w,-$12345678.l
move.w  $1234.w,-$12345678.l
move.l  $1234.w,-$12345678.l

move    $1234.w,-$12345678
move.b  $1234.w,-$12345678
move.w  $1234.w,-$12345678
move.l  $1234.w,-$12345678

move    $12345678.l,-$1234.w
move.b  $12345678.l,-$1234.w
move.w  $12345678.l,-$1234.w
move.l  $12345678.l,-$1234.w

move    $12345678,-$1234.w
move.b  $12345678,-$1234.w
move.w  $12345678,-$1234.w
move.l  $12345678,-$1234.w

move    $12345678.l,-$12345678.l
move.b  $12345678.l,-$12345678.l
move.w  $12345678.l,-$12345678.l
move.l  $12345678.l,-$12345678.l

move    $12345678,-$12345678
move.b  $12345678,-$12345678
move.w  $12345678,-$12345678
move.l  $12345678,-$12345678


// MOVEM Register List Encoded Using 16-Bit Immediate
movem   ($12345678).l,#$FEDC
movem.w ($12345678).l,#$FEDC
movem.l ($12345678).l,#$FEDC

movem   #$FEDC,($12345678).l
movem.w #$FEDC,($12345678).l
movem.l #$FEDC,($12345678).l

movem   ($1234).w,#$FEDC
movem.w ($1234).w,#$FEDC
movem.l ($1234).w,#$FEDC

movem   #$FEDC,($1234).w
movem.w #$FEDC,($1234).w
movem.l #$FEDC,($1234).w

movem   (a7),#$FEDC
movem.w (a7),#$FEDC
movem.l (a7),#$FEDC

movem   #$FEDC,(a7)
movem.w #$FEDC,(a7)
movem.l #$FEDC,(a7)

movem   (a7)+,#$FEDC
movem.w (a7)+,#$FEDC
movem.l (a7)+,#$FEDC

movem   #$FEDC,-(a7)
movem.w #$FEDC,-(a7)
movem.l #$FEDC,-(a7)

movem   $12(a7,d6.l),#$FEDC
movem   ($12,a7,d6.l),#$FEDC
movem.w $12(a7,d6.l),#$FEDC
movem.w ($12,a7,d6.l),#$FEDC
movem.l $12(a7,d6.l),#$FEDC
movem.l ($12,a7,d6.l),#$FEDC

movem   #$FEDC,$12(a7,d6.l)
movem   #$FEDC,($12,a7,d6.l)
movem.w #$FEDC,$12(a7,d6.l)
movem.w #$FEDC,($12,a7,d6.l)
movem.l #$FEDC,$12(a7,d6.l)
movem.l #$FEDC,($12,a7,d6.l)

movem   $12(a7,d6.w),#$FEDC
movem   ($12,a7,d6.w),#$FEDC
movem.w $12(a7,d6.w),#$FEDC
movem.w ($12,a7,d6.w),#$FEDC
movem.l $12(a7,d6.w),#$FEDC
movem.l ($12,a7,d6.w),#$FEDC

movem   #$FEDC,$12(a7,d6.w)
movem   #$FEDC,($12,a7,d6.w)
movem.w #$FEDC,$12(a7,d6.w)
movem.w #$FEDC,($12,a7,d6.w)
movem.l #$FEDC,$12(a7,d6.w)
movem.l #$FEDC,($12,a7,d6.w)

movem   $12(a7,d6),#$FEDC
movem   ($12,a7,d6),#$FEDC
movem.w $12(a7,d6),#$FEDC
movem.w ($12,a7,d6),#$FEDC
movem.l $12(a7,d6),#$FEDC
movem.l ($12,a7,d6),#$FEDC

movem   #$FEDC,$12(a7,d6)
movem   #$FEDC,($12,a7,d6)
movem.w #$FEDC,$12(a7,d6)
movem.w #$FEDC,($12,a7,d6)
movem.l #$FEDC,$12(a7,d6)
movem.l #$FEDC,($12,a7,d6)

movem   $1234(a7),#$FEDC
movem   ($1234,a7),#$FEDC
movem.w $1234(a7),#$FEDC
movem.w ($1234,a7),#$FEDC
movem.l $1234(a7),#$FEDC
movem.l ($1234,a7),#$FEDC

movem   #$FEDC,$1234(a7)
movem   #$FEDC,($1234,a7)
movem.w #$FEDC,$1234(a7)
movem.w #$FEDC,($1234,a7)
movem.l #$FEDC,$1234(a7)
movem.l #$FEDC,($1234,a7)


movem   MOVEMPC(pc,d7.l),#$FEDC
movem   (MOVEMPC,pc,d7.l),#$FEDC
movem.w MOVEMPC(pc,d7.l),#$FEDC
movem.w (MOVEMPC,pc,d7.l),#$FEDC
movem.l MOVEMPC(pc,d7.l),#$FEDC
movem.l (MOVEMPC,pc,d7.l),#$FEDC

movem   MOVEMPC(pc,d7.w),#$FEDC
movem   (MOVEMPC,pc,d7.w),#$FEDC
movem.w MOVEMPC(pc,d7.w),#$FEDC
movem.w (MOVEMPC,pc,d7.w),#$FEDC
movem.l MOVEMPC(pc,d7.w),#$FEDC
movem.l (MOVEMPC,pc,d7.w),#$FEDC

MOVEMPC:
movem   MOVEMPC(pc,d7),#$FEDC
movem   (MOVEMPC,pc,d7),#$FEDC
movem.w MOVEMPC(pc,d7),#$FEDC
movem.w (MOVEMPC,pc,d7),#$FEDC
movem.l MOVEMPC(pc,d7),#$FEDC
movem.l (MOVEMPC,pc,d7),#$FEDC

movem   $1234(pc),#$FEDC
movem   ($1234,pc),#$FEDC
movem.w $1234(pc),#$FEDC
movem.w ($1234,pc),#$FEDC
movem.l $1234(pc),#$FEDC
movem.l ($1234,pc),#$FEDC


movem   $1234.w,#$FEDC
movem.w $1234.w,#$FEDC
movem.l $1234.w,#$FEDC

movem   #$FEDC,$1234.w
movem.w #$FEDC,$1234.w
movem.l #$FEDC,$1234.w
  
movem   $12345678.l,#$FEDC
movem.w $12345678.l,#$FEDC
movem.l $12345678.l,#$FEDC

movem   #$FEDC,$12345678.l
movem.w #$FEDC,$12345678.l
movem.l #$FEDC,$12345678.l

movem   $12345678,#$FEDC
movem.w $12345678,#$FEDC
movem.l $12345678,#$FEDC

movem   #$FEDC,$12345678
movem.w #$FEDC,$12345678
movem.l #$FEDC,$12345678


movep   $1234(a7),d6
movep   ($1234,a7),d6
movep.w $1234(a7),d6
movep.w ($1234,a7),d6
movep.l $1234(a7),d6
movep.l ($1234,a7),d6

movep   d7,$1234(a6)
movep   d7,($1234,a6)
movep.w d7,$1234(a6)
movep.w d7,($1234,a6)
movep.l d7,$1234(a6)
movep.l d7,($1234,a6)


moveq   #$12,d7
moveq.l #$12,d7


cmp     ($12345678).l,d7
cmp.b   ($12345678).l,d7
cmp.w   ($12345678).l,d7
cmp.l   ($12345678).l,d7

cmp     ($1234).w,d7
cmp.b   ($1234).w,d7
cmp.w   ($1234).w,d7
cmp.l   ($1234).w,d7

cmp     d7,d6
cmp.b   d7,d6
cmp.w   d7,d6
cmp.l   d7,d6

cmp     a7,d6
//cmp.b   a7,d6 // Illegal Addressing Mode
cmp.w   a7,d6
cmp.l   a7,d6

cmp     (a7),d6
cmp.b   (a7),d6
cmp.w   (a7),d6
cmp.l   (a7),d6

cmp     (a7)+,d6
cmp.b   (a7)+,d6
cmp.w   (a7)+,d6
cmp.l   (a7)+,d6

cmp     -(a7),d6
cmp.b   -(a7),d6
cmp.w   -(a7),d6
cmp.l   -(a7),d6

cmp     $12(a7,d6.l),d5
cmp     ($12,a7,d6.l),d5
cmp.b   $12(a7,d6.l),d5
cmp.b   ($12,a7,d6.l),d5
cmp.w   $12(a7,d6.l),d5
cmp.w   ($12,a7,d6.l),d5
cmp.l   $12(a7,d6.l),d5
cmp.l   ($12,a7,d6.l),d5

cmp     $12(a7,d6.w),d5
cmp     ($12,a7,d6.w),d5
cmp.b   $12(a7,d6.w),d5
cmp.b   ($12,a7,d6.w),d5
cmp.w   $12(a7,d6.w),d5
cmp.w   ($12,a7,d6.w),d5
cmp.l   $12(a7,d6.w),d5
cmp.l   ($12,a7,d6.w),d5

cmp     $12(a7,d6),d5
cmp     ($12,a7,d6),d5
cmp.b   $12(a7,d6),d5
cmp.b   ($12,a7,d6),d5
cmp.w   $12(a7,d6),d5
cmp.w   ($12,a7,d6),d5
cmp.l   $12(a7,d6),d5
cmp.l   ($12,a7,d6),d5
 
cmp     $1234(a7),d6
cmp     ($1234,a7),d6
cmp.b   $1234(a7),d6
cmp.b   ($1234,a7),d6
cmp.w   $1234(a7),d6
cmp.w   ($1234,a7),d6
cmp.l   $1234(a7),d6
cmp.l   ($1234,a7),d6


cmp     CMPPC(pc,d7.l),d6
cmp     (CMPPC,pc,d7.l),d6
cmp.b   CMPPC(pc,d7.l),d6
cmp.b   (CMPPC,pc,d7.l),d6
cmp.w   CMPPC(pc,d7.l),d6
cmp.w   (CMPPC,pc,d7.l),d6
cmp.l   CMPPC(pc,d7.l),d6
cmp.l   (CMPPC,pc,d7.l),d6

cmp     CMPPC(pc,d7.w),d6
cmp     (CMPPC,pc,d7.w),d6
cmp.b   CMPPC(pc,d7.w),d6
cmp.b   (CMPPC,pc,d7.w),d6
cmp.w   CMPPC(pc,d7.w),d6
cmp.w   (CMPPC,pc,d7.w),d6
cmp.l   CMPPC(pc,d7.w),d6
cmp.l   (CMPPC,pc,d7.w),d6

CMPPC:
cmp     CMPPC(pc,d7),d6
cmp     (CMPPC,pc,d7),d6
cmp.b   CMPPC(pc,d7),d6
cmp.b   (CMPPC,pc,d7),d6
cmp.w   CMPPC(pc,d7),d6
cmp.w   (CMPPC,pc,d7),d6
cmp.l   CMPPC(pc,d7),d6
cmp.l   (CMPPC,pc,d7),d6

cmp     $1234(pc),d7
cmp     ($1234,pc),d7
cmp.b   $1234(pc),d7
cmp.b   ($1234,pc),d7
cmp.w   $1234(pc),d7
cmp.w   ($1234,pc),d7
cmp.l   $1234(pc),d7
cmp.l   ($1234,pc),d7


cmp     ($12345678).l,a7
cmpa    ($12345678).l,a7
//cmp.b   ($12345678).l,a7 // Illegal Addressing Mode
//cmpa.b  ($12345678).l,a7 // Illegal Addressing Mode
cmp.w   ($12345678).l,a7
cmpa.w  ($12345678).l,a7
cmp.l   ($12345678).l,a7
cmpa.l  ($12345678).l,a7

cmp     ($1234).w,a7
cmpa    ($1234).w,a7
//cmp.b   ($1234).w,a7 // Illegal Addressing Mode
//cmpa.b  ($1234).w,a7 // Illegal Addressing Mode
cmp.w   ($1234).w,a7
cmpa.w  ($1234).w,a7
cmp.l   ($1234).w,a7
cmpa.l  ($1234).w,a7

cmp     d7,a6
cmpa    d7,a6
//cmp.b   d7,a6 // Illegal Addressing Mode
//cmpa.b  d7,a6 // Illegal Addressing Mode
cmp.w   d7,a6
cmpa.w  d7,a6
cmp.l   d7,a6
cmpa.l  d7,a6

cmp     a7,a6
cmpa    a7,a6
//cmp.b   a7,a6 // Illegal Addressing Mode
//cmpa.b  a7,a6 // Illegal Addressing Mode
cmp.w   a7,a6
cmpa.w  a7,a6
cmp.l   a7,a6
cmpa.l  a7,a6

cmp     (a7),a6
cmpa    (a7),a6
//cmp.b   (a7),a6 // Illegal Addressing Mode
//cmpa.b  (a7),a6 // Illegal Addressing Mode
cmp.w   (a7),a6
cmpa.w  (a7),a6
cmp.l   (a7),a6
cmpa.l  (a7),a6

cmp     (a7)+,a6
cmpa    (a7)+,a6
//cmp.b   (a7)+,a6 // Illegal Addressing Mode
//cmpa.b  (a7)+,a6 // Illegal Addressing Mode
cmp.w   (a7)+,a6
cmpa.w  (a7)+,a6
cmp.l   (a7)+,a6
cmpa.l  (a7)+,a6

cmp     -(a7),a6
cmpa    -(a7),a6
//cmp.b   -(a7),a6 // Illegal Addressing Mode
//cmpa.b  -(a7),a6 // Illegal Addressing Mode
cmp.w   -(a7),a6
cmpa.w  -(a7),a6
cmp.l   -(a7),a6
cmpa.l  -(a7),a6

cmp     $12(a7,d6.l),a5
cmp     ($12,a7,d6.l),a5
cmpa    $12(a7,d6.l),a5
cmpa    ($12,a7,d6.l),a5
//cmp.b   $12(a7,d6.l),a5  // Illegal Addressing Mode
//cmp.b   ($12,a7,d6.l),a5 // Illegal Addressing Mode
//cmpa.b  $12(a7,d6.l),a5  // Illegal Addressing Mode
//cmpa.b  ($12,a7,d6.l),a5 // Illegal Addressing Mode
cmp.w   $12(a7,d6.l),a5
cmp.w   ($12,a7,d6.l),a5
cmpa.w  $12(a7,d6.l),a5
cmpa.w  ($12,a7,d6.l),a5
cmp.l   $12(a7,d6.l),a5
cmp.l   ($12,a7,d6.l),a5
cmpa.l  $12(a7,d6.l),a5
cmpa.l  ($12,a7,d6.l),a5

cmp     $12(a7,d6.w),a5
cmp     ($12,a7,d6.w),a5
cmpa    $12(a7,d6.w),a5
cmpa    ($12,a7,d6.w),a5
//cmp.b   $12(a7,d6.w),a5  // Illegal Addressing Mode
//cmp.b   ($12,a7,d6.w),a5 // Illegal Addressing Mode
//cmpa.b  $12(a7,d6.w),a5  // Illegal Addressing Mode
//cmpa.b  ($12,a7,d6.w),a5 // Illegal Addressing Mode
cmp.w   $12(a7,d6.w),a5
cmp.w   ($12,a7,d6.w),a5
cmpa.w  $12(a7,d6.w),a5
cmpa.w  ($12,a7,d6.w),a5
cmp.l   $12(a7,d6.w),a5
cmp.l   ($12,a7,d6.w),a5
cmpa.l  $12(a7,d6.w),a5
cmpa.l  ($12,a7,d6.w),a5

cmp     $12(a7,d6),a5
cmp     ($12,a7,d6),a5
cmpa    $12(a7,d6),a5
cmpa    ($12,a7,d6),a5
//cmp.b   $12(a7,d6),a5  // Illegal Addressing Mode
//cmp.b   ($12,a7,d6),a5 // Illegal Addressing Mode
//cmpa.b  $12(a7,d6),a5  // Illegal Addressing Mode
//cmpa.b  ($12,a7,d6),a5 // Illegal Addressing Mode
cmp.w   $12(a7,d6),a5
cmp.w   ($12,a7,d6),a5
cmpa.w  $12(a7,d6),a5
cmpa.w  ($12,a7,d6),a5
cmp.l   $12(a7,d6),a5
cmp.l   ($12,a7,d6),a5
cmpa.l  $12(a7,d6),a5
cmpa.l  ($12,a7,d6),a5

cmp     $1234(a7),a6
cmp     ($1234,a7),a6
cmpa    $1234(a7),a6
cmpa    ($1234,a7),a6
//cmp.b   $1234(a7),a6  // Illegal Addressing Mode
//cmp.b   ($1234,a7),a6 // Illegal Addressing Mode
//cmpa.b  $1234(a7),a6  // Illegal Addressing Mode
//cmpa.b  ($1234,a7),a6 // Illegal Addressing Mode
cmp.w   $1234(a7),a6
cmp.w   ($1234,a7),a6
cmpa.w  $1234(a7),a6
cmpa.w  ($1234,a7),a6
cmp.l   $1234(a7),a6
cmp.l   ($1234,a7),a6
cmpa.l  $1234(a7),a6
cmpa.l  ($1234,a7),a6


cmp     CMPAPC(pc,d7.l),a6
cmp     (CMPAPC,pc,d7.l),a6
cmpa    CMPAPC(pc,d7.l),a6
cmpa    (CMPAPC,pc,d7.l),a6
//cmp.b   CMPAPC(pc,d7.l),a6  // Illegal Addressing Mode
//cmp.b   (CMPAPC,pc,d7.l),a6 // Illegal Addressing Mode
//cmpa.b  CMPAPC(pc,d7.l),a6  // Illegal Addressing Mode
//cmpa.b  (CMPAPC,pc,d7.l),a6 // Illegal Addressing Mode
cmp.w   CMPAPC(pc,d7.l),a6
cmp.w   (CMPAPC,pc,d7.l),a6
cmpa.w  CMPAPC(pc,d7.l),a6
cmpa.w  (CMPAPC,pc,d7.l),a6
cmp.l   CMPAPC(pc,d7.l),a6
cmp.l   (CMPAPC,pc,d7.l),a6
cmpa.l  CMPAPC(pc,d7.l),a6
cmpa.l  (CMPAPC,pc,d7.l),a6

cmp     CMPAPC(pc,d7.w),a6
cmp     (CMPAPC,pc,d7.w),a6
cmpa    CMPAPC(pc,d7.w),a6
cmpa    (CMPAPC,pc,d7.w),a6
//cmp.b   CMPAPC(pc,d7.w),a6  // Illegal Addressing Mode
//cmp.b   (CMPAPC,pc,d7.w),a6 // Illegal Addressing Mode
//cmpa.b  CMPAPC(pc,d7.w),a6  // Illegal Addressing Mode
//cmpa.b  (CMPAPC,pc,d7.w),a6 // Illegal Addressing Mode
cmp.w   CMPAPC(pc,d7.w),a6
cmp.w   (CMPAPC,pc,d7.w),a6
cmpa.w  CMPAPC(pc,d7.w),a6
cmpa.w  (CMPAPC,pc,d7.w),a6
cmp.l   CMPAPC(pc,d7.w),a6
cmp.l   (CMPAPC,pc,d7.w),a6
cmpa.l  CMPAPC(pc,d7.w),a6
cmpa.l  (CMPAPC,pc,d7.w),a6

CMPAPC:
cmp     CMPAPC(pc,d7),a6
cmp     (CMPAPC,pc,d7),a6
cmpa    CMPAPC(pc,d7),a6
cmpa    (CMPAPC,pc,d7),a6
//cmp.b   CMPAPC(pc,d7),a6  // Illegal Addressing Mode
//cmp.b   (CMPAPC,pc,d7),a6 // Illegal Addressing Mode
//cmpa.b  CMPAPC(pc,d7),a6  // Illegal Addressing Mode
//cmpa.b  (CMPAPC,pc,d7),a6 // Illegal Addressing Mode
cmp.w   CMPAPC(pc,d7),a6
cmp.w   (CMPAPC,pc,d7),a6
cmpa.w  CMPAPC(pc,d7),a6
cmpa.w  (CMPAPC,pc,d7),a6
cmp.l   CMPAPC(pc,d7),a6
cmp.l   (CMPAPC,pc,d7),a6
cmpa.l  CMPAPC(pc,d7),a6
cmpa.l  (CMPAPC,pc,d7),a6

cmp     $1234(pc),a7
cmp     ($1234,pc),a7
cmpa    $1234(pc),a7
cmpa    ($1234,pc),a7
//cmp.b   $1234(pc),a7  // Illegal Addressing Mode
//cmp.b   ($1234,pc),a7 // Illegal Addressing Mode
//cmpa.b  $1234(pc),a7  // Illegal Addressing Mode
//cmpa.b  ($1234,pc),a7 // Illegal Addressing Mode
cmp.w   $1234(pc),a7
cmp.w   ($1234,pc),a7
cmpa.w  $1234(pc),a7
cmpa.w  ($1234,pc),a7
cmp.l   $1234(pc),a7
cmp.l   ($1234,pc),a7
cmpa.l  $1234(pc),a7
cmpa.l  ($1234,pc),a7


cmp     #$FEDC,($12345678).l
cmpi    #$FEDC,($12345678).l
cmp.b   #$FE,($12345678).l
cmpi.b  #$FE,($12345678).l
cmp.w   #$FEDC,($12345678).l
cmpi.w  #$FEDC,($12345678).l
cmp.l   #$FEDCBA98,($12345678).l
cmpi.l  #$FEDCBA98,($12345678).l

cmp     #$FEDC,($1234).w
cmpi    #$FEDC,($1234).w
cmp.b   #$FE,($1234).w
cmpi.b  #$FE,($1234).w
cmp.w   #$FEDC,($1234).w
cmpi.w  #$FEDC,($1234).w
cmp.l   #$FEDCBA98,($1234).w
cmpi.l  #$FEDCBA98,($1234).w

cmp     #$FEDC,(a7)
cmpi    #$FEDC,(a7)
cmp.b   #$FE,(a7)
cmpi.b  #$FE,(a7)
cmp.w   #$FEDC,(a7)
cmpi.w  #$FEDC,(a7)
cmp.l   #$FEDCBA98,(a7)
cmpi.l  #$FEDCBA98,(a7)

cmp     #$FEDC,(a7)+
cmpi    #$FEDC,(a7)+
cmp.b   #$FE,(a7)+
cmpi.b  #$FE,(a7)+
cmp.w   #$FEDC,(a7)+
cmpi.w  #$FEDC,(a7)+
cmp.l   #$FEDCBA98,(a7)+
cmpi.l  #$FEDCBA98,(a7)+

cmp     #$FEDC,-(a7)
cmpi    #$FEDC,-(a7)
cmp.b   #$FE,-(a7)
cmpi.b  #$FE,-(a7)
cmp.w   #$FEDC,-(a7)
cmpi.w  #$FEDC,-(a7)
cmp.l   #$FEDCBA98,-(a7)
cmpi.l  #$FEDCBA98,-(a7)

cmp     #$FEDC,$12(a7,d6.l)
cmp     #$FEDC,($12,a7,d6.l)
cmpi    #$FEDC,$12(a7,d6.l)
cmpi    #$FEDC,($12,a7,d6.l)
cmp.b   #$FE,$12(a7,d6.l)
cmp.b   #$FE,($12,a7,d6.l)
cmpi.b  #$FE,$12(a7,d6.l)
cmpi.b  #$FE,($12,a7,d6.l)
cmp.w   #$FEDC,$12(a7,d6.l)
cmp.w   #$FEDC,($12,a7,d6.l)
cmpi.w  #$FEDC,$12(a7,d6.l)
cmpi.w  #$FEDC,($12,a7,d6.l)
cmp.l   #$FEDCBA98,$12(a7,d6.l)
cmp.l   #$FEDCBA98,($12,a7,d6.l)
cmpi.l  #$FEDCBA98,$12(a7,d6.l)
cmpi.l  #$FEDCBA98,($12,a7,d6.l)

cmp     #$FEDC,$12(a7,d6.w)
cmp     #$FEDC,($12,a7,d6.w)
cmpi    #$FEDC,$12(a7,d6.w)
cmpi    #$FEDC,($12,a7,d6.w)
cmp.b   #$FE,$12(a7,d6.w)
cmp.b   #$FE,($12,a7,d6.w)
cmpi.b  #$FE,$12(a7,d6.w)
cmpi.b  #$FE,($12,a7,d6.w)
cmp.w   #$FEDC,$12(a7,d6.w)
cmp.w   #$FEDC,($12,a7,d6.w)
cmpi.w  #$FEDC,$12(a7,d6.w)
cmpi.w  #$FEDC,($12,a7,d6.w)
cmp.l   #$FEDCBA98,$12(a7,d6.w)
cmp.l   #$FEDCBA98,($12,a7,d6.w)
cmpi.l  #$FEDCBA98,$12(a7,d6.w)
cmpi.l  #$FEDCBA98,($12,a7,d6.w)

cmp     #$FEDC,$12(a7,d6)
cmp     #$FEDC,($12,a7,d6)
cmpi    #$FEDC,$12(a7,d6)
cmpi    #$FEDC,($12,a7,d6)
cmp.b   #$FE,$12(a7,d6)
cmp.b   #$FE,($12,a7,d6)
cmpi.b  #$FE,$12(a7,d6)
cmpi.b  #$FE,($12,a7,d6)
cmp.w   #$FEDC,$12(a7,d6)
cmp.w   #$FEDC,($12,a7,d6)
cmpi.w  #$FEDC,$12(a7,d6)
cmpi.w  #$FEDC,($12,a7,d6)
cmp.l   #$FEDCBA98,$12(a7,d6)
cmp.l   #$FEDCBA98,($12,a7,d6)
cmpi.l  #$FEDCBA98,$12(a7,d6)
cmpi.l  #$FEDCBA98,($12,a7,d6)

cmp     #$FEDC,$1234(a7)
cmp     #$FEDC,($1234,a7)
cmpi    #$FEDC,$1234(a7)
cmpi    #$FEDC,($1234,a7)
cmp.b   #$FE,$1234(a7)
cmp.b   #$FE,($1234,a7)
cmpi.b  #$FE,$1234(a7)
cmpi.b  #$FE,($1234,a7)
cmp.w   #$FEDC,$1234(a7)
cmp.w   #$FEDC,($1234,a7)
cmpi.w  #$FEDC,$1234(a7)
cmpi.w  #$FEDC,($1234,a7)
cmp.l   #$FEDCBA98,$1234(a7)
cmp.l   #$FEDCBA98,($1234,a7)
cmpi.l  #$FEDCBA98,$1234(a7)
cmpi.l  #$FEDCBA98,($1234,a7)

cmp     #$FEDC,a7
cmpa    #$FEDC,a7
cmpi    #$FEDC,a7
//cmp.b   #$FE,a7 // Illegal Addressing Mode
//cmpa.b  #$FE,a7 // Illegal Addressing Mode
//cmpi.b  #$FE,a7 // Illegal Addressing Mode
cmp.w   #$FEDC,a7
cmpa.w  #$FEDC,a7
cmpi.w  #$FEDC,a7
cmp.l   #$FEDCBA98,a7
cmpa.l  #$FEDCBA98,a7
cmpi.l  #$FEDCBA98,a7

cmp     #$FEDC,d7
cmpi    #$FEDC,d7
cmp.b   #$FE,d7
cmpi.b  #$FE,d7
cmp.w   #$FEDC,d7
cmpi.w  #$FEDC,d7
cmp.l   #$FEDCBA98,d7
cmpi.l  #$FEDCBA98,d7


cmp     $1234.w,d7
cmp.b   $1234.w,d7
cmp.w   $1234.w,d7
cmp.l   $1234.w,d7

cmp     $12345678.l,d7
cmp.b   $12345678.l,d7
cmp.w   $12345678.l,d7
cmp.l   $12345678.l,d7

cmp     $12345678,d7
cmp.b   $12345678,d7
cmp.w   $12345678,d7
cmp.l   $12345678,d7

cmp     $1234.w,a7
cmpa    $1234.w,a7
//cmp.b   $1234.w,a7 // Illegal Addressing Mode
//cmpa.b  $1234.w,a7 // Illegal Addressing Mode
cmp.w   $1234.w,a7
cmpa.w  $1234.w,a7
cmp.l   $1234.w,a7
cmpa.l  $1234.w,a7

cmp     $12345678.l,a7
cmpa    $12345678.l,a7
//cmp.b   $12345678.l,a7 // Illegal Addressing Mode
//cmpa.b  $12345678.l,a7 // Illegal Addressing Mode
cmp.w   $12345678.l,a7
cmpa.w  $12345678.l,a7
cmp.l   $12345678.l,a7
cmpa.l  $12345678.l,a7

cmp     $12345678,a7
cmpa    $12345678,a7
//cmp.b   $12345678,a7 // Illegal Addressing Mode
//cmpa.b  $12345678,a7 // Illegal Addressing Mode
cmp.w   $12345678,a7
cmpa.w  $12345678,a7
cmp.l   $12345678,a7
cmpa.l  $12345678,a7

cmp     #$FEDC,$1234.w
cmpi    #$FEDC,$1234.w
cmp.b   #$FE,$1234.w
cmpi.b  #$FE,$1234.w
cmp.w   #$FEDC,$1234.w
cmpi.w  #$FEDC,$1234.w
cmp.l   #$FEDCBA98,$1234.w
cmpi.l  #$FEDCBA98,$1234.w

cmp     #$FEDC,$12345678.l
cmpi    #$FEDC,$12345678.l
cmp.b   #$FE,$12345678.l
cmpi.b  #$FE,$12345678.l
cmp.w   #$FEDC,$12345678.l
cmpi.w  #$FEDC,$12345678.l
cmp.l   #$FEDCBA98,$12345678.l
cmpi.l  #$FEDCBA98,$12345678.l

cmp     #$FEDC,$12345678
cmpi    #$FEDC,$12345678
cmp.b   #$FE,$12345678
cmpi.b  #$FE,$12345678
cmp.w   #$FEDC,$12345678
cmpi.w  #$FEDC,$12345678
cmp.l   #$FEDCBA98,$12345678
cmpi.l  #$FEDCBA98,$12345678


cmp     (a7)+,(a6)+
cmpm    (a7)+,(a6)+
cmp.b   (a7)+,(a6)+
cmpm.b  (a7)+,(a6)+
cmp.w   (a7)+,(a6)+
cmpm.w  (a7)+,(a6)+
cmp.l   (a7)+,(a6)+
cmpm.l  (a7)+,(a6)+


add     ($12345678).l,d7
add.b   ($12345678).l,d7
add.w   ($12345678).l,d7
add.l   ($12345678).l,d7

add     d7,($12345678).l
add.b   d7,($12345678).l
add.w   d7,($12345678).l
add.l   d7,($12345678).l

add     ($1234).w,d7
add.b   ($1234).w,d7
add.w   ($1234).w,d7
add.l   ($1234).w,d7

add     d7,($1234).w
add.b   d7,($1234).w
add.w   d7,($1234).w
add.l   d7,($1234).w

add     (a7),d6
add.b   (a7),d6
add.w   (a7),d6
add.l   (a7),d6

add     d7,(a6)
add.b   d7,(a6)
add.w   d7,(a6)
add.l   d7,(a6)

add     (a7)+,d6
add.b   (a7)+,d6
add.w   (a7)+,d6
add.l   (a7)+,d6

add     d7,(a6)+
add.b   d7,(a6)+
add.w   d7,(a6)+
add.l   d7,(a6)+

add     -(a7),d6
add.b   -(a7),d6
add.w   -(a7),d6
add.l   -(a7),d6

add     d7,-(a6)
add.b   d7,-(a6)
add.w   d7,-(a6)
add.l   d7,-(a6)

add     $12(a7,d6.l),d5
add     ($12,a7,d6.l),d5
add.b   $12(a7,d6.l),d5
add.b   ($12,a7,d6.l),d5
add.w   $12(a7,d6.l),d5
add.w   ($12,a7,d6.l),d5
add.l   $12(a7,d6.l),d5
add.l   ($12,a7,d6.l),d5

add     d7,$12(a6,d5.l)
add     d7,($12,a6,d5.l)
add.b   d7,$12(a6,d5.l)
add.b   d7,($12,a6,d5.l)
add.w   d7,$12(a6,d5.l)
add.w   d7,($12,a6,d5.l)
add.l   d7,$12(a6,d5.l)
add.l   d7,($12,a6,d5.l)

add     $12(a7,d6.w),d5
add     ($12,a7,d6.w),d5
add.b   $12(a7,d6.w),d5
add.b   ($12,a7,d6.w),d5
add.w   $12(a7,d6.w),d5
add.w   ($12,a7,d6.w),d5
add.l   $12(a7,d6.w),d5
add.l   ($12,a7,d6.w),d5

add     d7,$12(a6,d5.w)
add     d7,($12,a6,d5.w)
add.b   d7,$12(a6,d5.w)
add.b   d7,($12,a6,d5.w)
add.w   d7,$12(a6,d5.w)
add.w   d7,($12,a6,d5.w)
add.l   d7,$12(a6,d5.w)
add.l   d7,($12,a6,d5.w)

add     $12(a7,d6),d5
add     ($12,a7,d6),d5
add.b   $12(a7,d6),d5
add.b   ($12,a7,d6),d5
add.w   $12(a7,d6),d5
add.w   ($12,a7,d6),d5
add.l   $12(a7,d6),d5
add.l   ($12,a7,d6),d5

add     d7,$12(a6,d5)
add     d7,($12,a6,d5)
add.b   d7,$12(a6,d5)
add.b   d7,($12,a6,d5)
add.w   d7,$12(a6,d5)
add.w   d7,($12,a6,d5)
add.l   d7,$12(a6,d5)
add.l   d7,($12,a6,d5)

add     $1234(a7),d6
add     ($1234,a7),d6
add.b   $1234(a7),d6
add.b   ($1234,a7),d6
add.w   $1234(a7),d6
add.w   ($1234,a7),d6
add.l   $1234(a7),d6
add.l   ($1234,a7),d6

add     d7,$1234(a6)
add     d7,($1234,a6)
add.b   d7,$1234(a6)
add.b   d7,($1234,a6)
add.w   d7,$1234(a6)
add.w   d7,($1234,a6)
add.l   d7,$1234(a6)
add.l   d7,($1234,a6)


add     ADDPC(pc,d7.l),d6
add     (ADDPC,pc,d7.l),d6
add.b   ADDPC(pc,d7.l),d6
add.b   (ADDPC,pc,d7.l),d6
add.w   ADDPC(pc,d7.l),d6
add.w   (ADDPC,pc,d7.l),d6
add.l   ADDPC(pc,d7.l),d6
add.l   (ADDPC,pc,d7.l),d6

add     ADDPC(pc,d7.w),d6
add     (ADDPC,pc,d7.w),d6
add.b   ADDPC(pc,d7.w),d6
add.b   (ADDPC,pc,d7.w),d6
add.w   ADDPC(pc,d7.w),d6
add.w   (ADDPC,pc,d7.w),d6
add.l   ADDPC(pc,d7.w),d6
add.l   (ADDPC,pc,d7.w),d6

ADDPC:
add     ADDPC(pc,d7),d6
add     (ADDPC,pc,d7),d6
add.b   ADDPC(pc,d7),d6
add.b   (ADDPC,pc,d7),d6
add.w   ADDPC(pc,d7),d6
add.w   (ADDPC,pc,d7),d6
add.l   ADDPC(pc,d7),d6
add.l   (ADDPC,pc,d7),d6

add     $1234(pc),d7
add     ($1234,pc),d7
add.b   $1234(pc),d7
add.b   ($1234,pc),d7
add.w   $1234(pc),d7
add.w   ($1234,pc),d7
add.l   $1234(pc),d7
add.l   ($1234,pc),d7

add     d7,d6
add.b   d7,d6
add.w   d7,d6
add.l   d7,d6

add     a7,d6
//add.b   a7,d6 // Illegal Addressing Mode
add.w   a7,d6
add.l   a7,d6


add     ($12345678).l,a7
adda    ($12345678).l,a7
//add.b   ($12345678).l,a7 // Illegal Addressing Mode
//adda.b  ($12345678).l,a7 // Illegal Addressing Mode
add.w   ($12345678).l,a7
adda.w  ($12345678).l,a7
add.l   ($12345678).l,a7
adda.l  ($12345678).l,a7

add     ($1234).w,a7
adda    ($1234).w,a7
//add.b   ($1234).w,a7 // Illegal Addressing Mode
//adda.b  ($1234).w,a7 // Illegal Addressing Mode
add.w   ($1234).w,a7
adda.w  ($1234).w,a7
add.l   ($1234).w,a7
adda.l  ($1234).w,a7

add     a7,a6
adda    a7,a6
//add.b   a7,a6 // Illegal Addressing Mode
//adda.b  a7,a6 // Illegal Addressing Mode
add.w   a7,a6
adda.w  a7,a6
add.l   a7,a6
adda.l  a7,a6

add     (a7),a6
adda    (a7),a6
//add.b   (a7),a6 // Illegal Addressing Mode
//adda.b  (a7),a6 // Illegal Addressing Mode
add.w   (a7),a6
adda.w  (a7),a6
add.l   (a7),a6
adda.l  (a7),a6

add     (a7)+,a6
adda    (a7)+,a6
//add.b   (a7)+,a6 // Illegal Addressing Mode
//adda.b  (a7)+,a6 // Illegal Addressing Mode
add.w   (a7)+,a6
adda.w  (a7)+,a6
add.l   (a7)+,a6
adda.l  (a7)+,a6

add     -(a7),a6
adda    -(a7),a6
//add.b   -(a7),a6 // Illegal Addressing Mode
//adda.b  -(a7),a6 // Illegal Addressing Mode
add.w   -(a7),a6
adda.w  -(a7),a6
add.l   -(a7),a6
adda.l  -(a7),a6

add     $12(a7,d6.l),a5
add     ($12,a7,d6.l),a5
adda    $12(a7,d6.l),a5
adda    ($12,a7,d6.l),a5
//add.b   $12(a6,d7.l),a5  // Illegal Addressing Mode
//add.b   ($12,a6,d7.l),a5 // Illegal Addressing Mode
//adda.b  $12(a6,d7.l),a5  // Illegal Addressing Mode
//adda.b  ($12,a6,d7.l),a5 // Illegal Addressing Mode
add.w   $12(a7,d6.l),a5
add.w   ($12,a7,d6.l),a5
adda.w  $12(a7,d6.l),a5
adda.w  ($12,a7,d6.l),a5
add.l   $12(a7,d6.l),a5
add.l   ($12,a7,d6.l),a5
adda.l  $12(a7,d6.l),a5
adda.l  ($12,a7,d6.l),a5

add     $12(a7,d6.w),a5
add     ($12,a7,d6.w),a5
adda    $12(a7,d6.w),a5
adda    ($12,a7,d6.w),a5
//add.b   $12(a7,d6.w),a5  // Illegal Addressing Mode
//add.b   ($12,a7,d6.w),a5 // Illegal Addressing Mode
//adda.b  $12(a7,d6.w),a5  // Illegal Addressing Mode
//adda.b  ($12,a7,d6.w),a5 // Illegal Addressing Mode
add.w   $12(a7,d6.w),a5
add.w   ($12,a7,d6.w),a5
adda.w  $12(a7,d6.w),a5
adda.w  ($12,a7,d6.w),a5
add.l   $12(a7,d6.w),a5
add.l   ($12,a7,d6.w),a5
adda.l  $12(a7,d6.w),a5
adda.l  ($12,a7,d6.w),a5

add     $12(a7,d6),a5
add     ($12,a7,d6),a5
adda    $12(a7,d6),a5
adda    ($12,a7,d6),a5
//add.b   $12(a7,d6),a5  // Illegal Addressing Mode
//add.b   ($12,a7,d6),a5 // Illegal Addressing Mode
//adda.b  $12(a7,d6),a5  // Illegal Addressing Mode
//adda.b  ($12,a7,d6),a5 // Illegal Addressing Mode
add.w   $12(a7,d6),a5
add.w   ($12,a7,d6),a5
adda.w  $12(a7,d6),a5
adda.w  ($12,a7,d6),a5
add.l   $12(a7,d6),a5
add.l   ($12,a7,d6),a5
adda.l  $12(a7,d6),a5
adda.l  ($12,a7,d6),a5

add     $1234(a7),a6
add     ($1234,a7),a6
adda    $1234(a7),a6
adda    ($1234,a7),a6
//add.b   $1234(a7),a6  // Illegal Addressing Mode
//add.b   ($1234,a7),a6 // Illegal Addressing Mode
//adda.b  $1234(a7),a6  // Illegal Addressing Mode
//adda.b  ($1234,a7),a6 // Illegal Addressing Mode
add.w   $1234(a7),a6
add.w   ($1234,a7),a6
adda.w  $1234(a7),a6
adda.w  ($1234,a7),a6
add.l   $1234(a7),a6
add.l   ($1234,a7),a6
adda.l  $1234(a7),a6
adda.l  ($1234,a7),a6


add     ADDAPC(pc,d7.l),a6
add     (ADDAPC,pc,d7.l),a6
adda    ADDAPC(pc,d7.l),a6
adda    (ADDAPC,pc,d7.l),a6
//add.b   ADDAPC(pc,d7.l),a6  // Illegal Addressing Mode
//add.b   (ADDAPC,pc,d7.l),a6 // Illegal Addressing Mode
//adda.b  ADDAPC(pc,d7.l),a6  // Illegal Addressing Mode
//adda.b  (ADDAPC,pc,d7.l),a6 // Illegal Addressing Mode
add.w   ADDAPC(pc,d7.l),a6
add.w   (ADDAPC,pc,d7.l),a6
adda.w  ADDAPC(pc,d7.l),a6
adda.w  (ADDAPC,pc,d7.l),a6
add.l   ADDAPC(pc,d7.l),a6
add.l   (ADDAPC,pc,d7.l),a6
adda.l  ADDAPC(pc,d7.l),a6
adda.l  (ADDAPC,pc,d7.l),a6

add     ADDAPC(pc,d7.w),a6
add     (ADDAPC,pc,d7.w),a6
adda    ADDAPC(pc,d7.w),a6
adda    (ADDAPC,pc,d7.w),a6
//add.b   ADDAPC(pc,d7.w),a6  // Illegal Addressing Mode
//add.b   (ADDAPC,pc,d7.w),a6 // Illegal Addressing Mode
//adda.b  ADDAPC(pc,d7.w),a6  // Illegal Addressing Mode
//adda.b  (ADDAPC,pc,d7.w),a6 // Illegal Addressing Mode
add.w   ADDAPC(pc,d7.w),a6
add.w   (ADDAPC,pc,d7.w),a6
adda.w  ADDAPC(pc,d7.w),a6
adda.w  (ADDAPC,pc,d7.w),a6
add.l   ADDAPC(pc,d7.w),a6
add.l   (ADDAPC,pc,d7.w),a6
adda.l  ADDAPC(pc,d7.w),a6
adda.l  (ADDAPC,pc,d7.w),a6

ADDAPC:
add     ADDAPC(pc,d7),a6
add     (ADDAPC,pc,d7),a6
adda    ADDAPC(pc,d7),a6
adda    (ADDAPC,pc,d7),a6
//add.b   ADDAPC(pc,d7),a6  // Illegal Addressing Mode
//add.b   (ADDAPC,pc,d7),a6 // Illegal Addressing Mode
//adda.b  ADDAPC(pc,d7),a6  // Illegal Addressing Mode
//adda.b  (ADDAPC,pc,d7),a6 // Illegal Addressing Mode
add.w   ADDAPC(pc,d7),a6
add.w   (ADDAPC,pc,d7),a6
adda.w  ADDAPC(pc,d7),a6
adda.w  (ADDAPC,pc,d7),a6
add.l   ADDAPC(pc,d7),a6
add.l   (ADDAPC,pc,d7),a6
adda.l  ADDAPC(pc,d7),a6
adda.l  (ADDAPC,pc,d7),a6

add     $1234(pc),a7
add     ($1234,pc),a7
adda    $1234(pc),a7
adda    ($1234,pc),a7
//add.b   $1234(pc),a7  // Illegal Addressing Mode
//add.b   ($1234,pc),a7 // Illegal Addressing Mode
//adda.b  $1234(pc),a7  // Illegal Addressing Mode
//adda.b  ($1234,pc),a7 // Illegal Addressing Mode
add.w   $1234(pc),a7
add.w   ($1234,pc),a7
adda.w  $1234(pc),a7
adda.w  ($1234,pc),a7
add.l   $1234(pc),a7
add.l   ($1234,pc),a7
adda.l  $1234(pc),a7
adda.l  ($1234,pc),a7

add     d7,a6
adda    d7,a6
//add.b   d7,a6 // Illegal Addressing Mode
//adda.b  d7,a6 // Illegal Addressing Mode
add.w   d7,a6
adda.w  d7,a6
add.l   d7,a6
adda.l  d7,a6


add     #$FEDC,($12345678).l
addi    #$FEDC,($12345678).l
add.b   #$FE,($12345678).l
addi.b  #$FE,($12345678).l
add.w   #$FEDC,($12345678).l
addi.w  #$FEDC,($12345678).l
add.l   #$FEDCBA98,($12345678).l
addi.l  #$FEDCBA98,($12345678).l

add     #$FEDC,($1234).w
addi    #$FEDC,($1234).w
add.b   #$FE,($1234).w
addi.b  #$FE,($1234).w
add.w   #$FEDC,($1234).w
addi.w  #$FEDC,($1234).w
add.l   #$FEDCBA98,($1234).w
addi.l  #$FEDCBA98,($1234).w

add     #$FEDC,(a7)
addi    #$FEDC,(a7)
add.b   #$FE,(a7)
addi.b  #$FE,(a7)
add.w   #$FEDC,(a7)
addi.w  #$FEDC,(a7)
add.l   #$FEDCBA98,(a7)
addi.l  #$FEDCBA98,(a7)

add     #$FEDC,(a7)+
addi    #$FEDC,(a7)+
add.b   #$FE,(a7)+
addi.b  #$FE,(a7)+
add.w   #$FEDC,(a7)+
addi.w  #$FEDC,(a7)+
add.l   #$FEDCBA98,(a7)+
addi.l  #$FEDCBA98,(a7)+

add     #$FEDC,-(a7)
addi    #$FEDC,-(a7)
add.b   #$FE,-(a7)
addi.b  #$FE,-(a7)
add.w   #$FEDC,-(a7)
addi.w  #$FEDC,-(a7)
add.l   #$FEDCBA98,-(a7)
addi.l  #$FEDCBA98,-(a7)

add     #$FEDC,$12(a7,d6.l)
add     #$FEDC,($12,a7,d6.l)
addi    #$FEDC,$12(a7,d6.l)
addi    #$FEDC,($12,a7,d6.l)
add.b   #$FE,$12(a7,d6.l)
add.b   #$FE,($12,a7,d6.l)
addi.b  #$FE,$12(a7,d6.l)
addi.b  #$FE,($12,a7,d6.l)
add.w   #$FEDC,$12(a7,d6.l)
add.w   #$FEDC,($12,a7,d6.l)
addi.w  #$FEDC,$12(a7,d6.l)
addi.w  #$FEDC,($12,a7,d6.l)
add.l   #$FEDCBA98,$12(a7,d6.l)
add.l   #$FEDCBA98,($12,a7,d6.l)
addi.l  #$FEDCBA98,$12(a7,d6.l)
addi.l  #$FEDCBA98,($12,a7,d6.l)

add     #$FEDC,$12(a7,d6.w)
add     #$FEDC,($12,a7,d6.w)
addi    #$FEDC,$12(a7,d6.w)
addi    #$FEDC,($12,a7,d6.w)
add.b   #$FE,$12(a7,d6.w)
add.b   #$FE,($12,a7,d6.w)
addi.b  #$FE,$12(a7,d6.w)
addi.b  #$FE,($12,a7,d6.w)
add.w   #$FEDC,$12(a7,d6.w)
add.w   #$FEDC,($12,a7,d6.w)
addi.w  #$FEDC,$12(a7,d6.w)
addi.w  #$FEDC,($12,a7,d6.w)
add.l   #$FEDCBA98,$12(a7,d6.w)
add.l   #$FEDCBA98,($12,a7,d6.w)
addi.l  #$FEDCBA98,$12(a7,d6.w)
addi.l  #$FEDCBA98,($12,a7,d6.w)

add     #$FEDC,$12(a7,d6)
add     #$FEDC,($12,a7,d6)
addi    #$FEDC,$12(a7,d6)
addi    #$FEDC,($12,a7,d6)
add.b   #$FE,$12(a7,d6)
add.b   #$FE,($12,a7,d6)
addi.b  #$FE,$12(a7,d6)
addi.b  #$FE,($12,a7,d6)
add.w   #$FEDC,$12(a7,d6)
add.w   #$FEDC,($12,a7,d6)
addi.w  #$FEDC,$12(a7,d6)
addi.w  #$FEDC,($12,a7,d6)
add.l   #$FEDCBA98,$12(a7,d6)
add.l   #$FEDCBA98,($12,a7,d6)
addi.l  #$FEDCBA98,$12(a7,d6)
addi.l  #$FEDCBA98,($12,a7,d6)

add     #$FEDC,$1234(a7)
add     #$FEDC,($1234,a7)
addi    #$FEDC,$1234(a7)
addi    #$FEDC,($1234,a7)
add.b   #$FE,$1234(a7)
add.b   #$FE,($1234,a7)
addi.b  #$FE,$1234(a7)
addi.b  #$FE,($1234,a7)
add.w   #$FEDC,$1234(a7)
add.w   #$FEDC,($1234,a7)
addi.w  #$FEDC,$1234(a7)
addi.w  #$FEDC,($1234,a7)
add.l   #$FEDCBA98,$1234(a7)
add.l   #$FEDCBA98,($1234,a7)
addi.l  #$FEDCBA98,$1234(a7)
addi.l  #$FEDCBA98,($1234,a7)

add     #$FEDC,a7
adda    #$FEDC,a7
addi    #$FEDC,a7
//add.b   #$FE,a7 // Illegal Addressing Mode
//adda.b  #$FE,a7 // Illegal Addressing Mode
//addi.b  #$FE,a7 // Illegal Addressing Mode
add.w   #$FEDC,a7
adda.w  #$FEDC,a7
addi.w  #$FEDC,a7
add.l   #$FEDCBA98,a7
adda.l  #$FEDCBA98,a7
addi.l  #$FEDCBA98,a7

add     #$FEDC,d7
addi    #$FEDC,d7
add.b   #$FE,d7
addi.b  #$FE,d7
add.w   #$FEDC,d7
addi.w  #$FEDC,d7
add.l   #$FEDCBA98,d7
addi.l  #$FEDCBA98,d7


add     $1234.w,d7
add.b   $1234.w,d7
add.w   $1234.w,d7
add.l   $1234.w,d7

add     d7,$1234.w
add.b   d7,$1234.w
add.w   d7,$1234.w
add.l   d7,$1234.w

add     $12345678.l,d7
add.b   $12345678.l,d7
add.w   $12345678.l,d7
add.l   $12345678.l,d7

add     d7,$12345678.l
add.b   d7,$12345678.l
add.w   d7,$12345678.l
add.l   d7,$12345678.l

add     $12345678,d7
add.b   $12345678,d7
add.w   $12345678,d7
add.l   $12345678,d7

add     d7,$12345678
add.b   d7,$12345678
add.w   d7,$12345678
add.l   d7,$12345678

add     $1234.w,a7
adda    $1234.w,a7
//add.b   $1234.w,a7 // Illegal Addressing Mode
//adda.b  $1234.w,a7 // Illegal Addressing Mode
add.w   $1234.w,a7
adda.w  $1234.w,a7
add.l   $1234.w,a7
adda.l  $1234.w,a7

add     $12345678.l,a7
adda    $12345678.l,a7
//add.b   $12345678.l,a7 // Illegal Addressing Mode
//adda.b  $12345678.l,a7 // Illegal Addressing Mode
add.w   $12345678.l,a7
adda.w  $12345678.l,a7
add.l   $12345678.l,a7
adda.l  $12345678.l,a7

add     $12345678,a7
adda    $12345678,a7
//add.b   $12345678,a7 // Illegal Addressing Mode
//adda.b  $12345678,a7 // Illegal Addressing Mode
add.w   $12345678,a7
adda.w  $12345678,a7
add.l   $12345678,a7
adda.l  $12345678,a7

add     #$FEDC,$1234.w
addi    #$FEDC,$1234.w
add.b   #$FE,$1234.w
addi.b  #$FE,$1234.w
add.w   #$FEDC,$1234.w
addi.w  #$FEDC,$1234.w
add.l   #$FEDCBA98,$1234.w
addi.l  #$FEDCBA98,$1234.w

add     #$FEDC,$12345678.l
addi    #$FEDC,$12345678.l
add.b   #$FE,$12345678.l
addi.b  #$FE,$12345678.l
add.w   #$FEDC,$12345678.l
addi.w  #$FEDC,$12345678.l
add.l   #$FEDCBA98,$12345678.l
addi.l  #$FEDCBA98,$12345678.l

add     #$FEDC,$12345678
addi    #$FEDC,$12345678
add.b   #$FE,$12345678
addi.b  #$FE,$12345678
add.w   #$FEDC,$12345678
addi.w  #$FEDC,$12345678
add.l   #$FEDCBA98,$12345678
addi.l  #$FEDCBA98,$12345678


addq    #8,($12345678).l
addq.b  #8,($12345678).l
addq.w  #7,($12345678).l
addq.l  #6,($12345678).l

addq    #8,($1234).w
addq.b  #8,($1234).w
addq.w  #7,($1234).w
addq.l  #6,($1234).w

addq    #8,(a7)
addq.b  #8,(a7)
addq.w  #7,(a7)
addq.l  #6,(a7)

addq    #8,(a7)+
addq.b  #8,(a7)+
addq.w  #7,(a7)+
addq.l  #6,(a7)+

addq    #8,-(a7)
addq.b  #8,-(a7)
addq.w  #7,-(a7)
addq.l  #6,-(a7)

addq    #8,$12(a7,d6.l)
addq    #8,($12,a7,d6.l)
addq.b  #8,$12(a7,d6.l)
addq.b  #8,($12,a7,d6.l)
addq.w  #7,$12(a7,d6.l)
addq.w  #7,($12,a7,d6.l)
addq.l  #6,$12(a7,d6.l)
addq.l  #6,($12,a7,d6.l)

addq    #8,$12(a7,d6.w)
addq    #8,($12,a7,d6.w)
addq.b  #8,$12(a7,d6.w)
addq.b  #8,($12,a7,d6.w)
addq.w  #7,$12(a7,d6.w)
addq.w  #7,($12,a7,d6.w)
addq.l  #6,$12(a7,d6.w)
addq.l  #6,($12,a7,d6.w)

addq    #8,$12(a7,d6)
addq    #8,($12,a7,d6)
addq.b  #8,$12(a7,d6)
addq.b  #8,($12,a7,d6)
addq.w  #7,$12(a7,d6)
addq.w  #7,($12,a7,d6)
addq.l  #6,$12(a7,d6)
addq.l  #6,($12,a7,d6)

addq    #8,$1234(a7)
addq    #8,($1234,a7)
addq.b  #8,$1234(a7)
addq.b  #8,($1234,a7)
addq.w  #7,$1234(a7)
addq.w  #7,($1234,a7)
addq.l  #6,$1234(a7)
addq.l  #6,($1234,a7)

addq    #8,d7
addq.b  #8,d7
addq.w  #7,d7
addq.l  #6,d7

addq    #8,a7
//addq.b  #8,a7 // Illegal Addressing Mode
addq.w  #7,a7
addq.l  #6,a7


addq    #8,$1234.w
addq.b  #8,$1234.w
addq.w  #7,$1234.w
addq.l  #6,$1234.w

addq    #8,$12345678.l
addq.b  #8,$12345678.l
addq.w  #7,$12345678.l
addq.l  #6,$12345678.l

addq    #8,$12345678
addq.b  #8,$12345678
addq.w  #7,$12345678
addq.l  #6,$12345678


addx    d7,d6
addx.b  d7,d6
addx.w  d7,d6
addx.l  d7,d6

addx    -(a7),-(a6)
addx.b  -(a7),-(a6)
addx.w  -(a7),-(a6)
addx.l  -(a7),-(a6)


abcd    d7,d6
abcd.b  d7,d6
//abcd.w  d7,d6 // Bad Size
//abcd.l  d7,d6 // Bad Size

abcd    -(a7),-(a6)
abcd.b  -(a7),-(a6)
//abcd.w  -(a7),-(a6) // Bad Size
//abcd.l  -(a7),-(a6) // Bad Size


sub     ($12345678).l,d7
sub.b   ($12345678).l,d7
sub.w   ($12345678).l,d7
sub.l   ($12345678).l,d7

sub     d7,($12345678).l
sub.b   d7,($12345678).l
sub.w   d7,($12345678).l
sub.l   d7,($12345678).l

sub     ($1234).w,d7
sub.b   ($1234).w,d7
sub.w   ($1234).w,d7
sub.l   ($1234).w,d7

sub     d7,($1234).w
sub.b   d7,($1234).w
sub.w   d7,($1234).w
sub.l   d7,($1234).w

sub     (a7),d6
sub.b   (a7),d6
sub.w   (a7),d6
sub.l   (a7),d6

sub     d7,(a6)
sub.b   d7,(a6)
sub.w   d7,(a6)
sub.l   d7,(a6)

sub     (a7)+,d6
sub.b   (a7)+,d6
sub.w   (a7)+,d6
sub.l   (a7)+,d6

sub     d7,(a6)+
sub.b   d7,(a6)+
sub.w   d7,(a6)+
sub.l   d7,(a6)+

sub     -(a7),d6
sub.b   -(a7),d6
sub.w   -(a7),d6
sub.l   -(a7),d6

sub     d7,-(a6)
sub.b   d7,-(a6)
sub.w   d7,-(a6)
sub.l   d7,-(a6)

sub     $12(a7,d6.l),d5
sub     ($12,a7,d6.l),d5
sub.b   $12(a7,d6.l),d5
sub.b   ($12,a7,d6.l),d5
sub.w   $12(a7,d6.l),d5
sub.w   ($12,a7,d6.l),d5
sub.l   $12(a7,d6.l),d5
sub.l   ($12,a7,d6.l),d5

sub     d7,$12(a6,d5.l)
sub     d7,($12,a6,d5.l)
sub.b   d7,$12(a6,d5.l)
sub.b   d7,($12,a6,d5.l)
sub.w   d7,$12(a6,d5.l)
sub.w   d7,($12,a6,d5.l)
sub.l   d7,$12(a6,d5.l)
sub.l   d7,($12,a6,d5.l)

sub     $12(a7,d6.w),d5
sub     ($12,a7,d6.w),d5
sub.b   $12(a7,d6.w),d5
sub.b   ($12,a7,d6.w),d5
sub.w   $12(a7,d6.w),d5
sub.w   ($12,a7,d6.w),d5
sub.l   $12(a7,d6.w),d5
sub.l   ($12,a7,d6.w),d5

sub     d7,$12(a6,d5.w)
sub     d7,($12,a6,d5.w)
sub.b   d7,$12(a6,d5.w)
sub.b   d7,($12,a6,d5.w)
sub.w   d7,$12(a6,d5.w)
sub.w   d7,($12,a6,d5.w)
sub.l   d7,$12(a6,d5.w)
sub.l   d7,($12,a6,d5.w)

sub     $12(a7,d6),d5
sub     ($12,a7,d6),d5
sub.b   $12(a7,d6),d5
sub.b   ($12,a7,d6),d5
sub.w   $12(a7,d6),d5
sub.w   ($12,a7,d6),d5
sub.l   $12(a7,d6),d5
sub.l   ($12,a7,d6),d5

sub     d7,$12(a6,d5)
sub     d7,($12,a6,d5)
sub.b   d7,$12(a6,d5)
sub.b   d7,($12,a6,d5)
sub.w   d7,$12(a6,d5)
sub.w   d7,($12,a6,d5)
sub.l   d7,$12(a6,d5)
sub.l   d7,($12,a6,d5)

sub     $1234(a7),d6
sub     ($1234,a7),d6
sub.b   $1234(a7),d6
sub.b   ($1234,a7),d6
sub.w   $1234(a7),d6
sub.w   ($1234,a7),d6
sub.l   $1234(a7),d6
sub.l   ($1234,a7),d6

sub     d7,$1234(a6)
sub     d7,($1234,a6)
sub.b   d7,$1234(a6)
sub.b   d7,($1234,a6)
sub.w   d7,$1234(a6)
sub.w   d7,($1234,a6)
sub.l   d7,$1234(a6)
sub.l   d7,($1234,a6)


sub     SUBPC(pc,d7.l),d6
sub     (SUBPC,pc,d7.l),d6
sub.b   SUBPC(pc,d7.l),d6
sub.b   (SUBPC,pc,d7.l),d6
sub.w   SUBPC(pc,d7.l),d6
sub.w   (SUBPC,pc,d7.l),d6
sub.l   SUBPC(pc,d7.l),d6
sub.l   (SUBPC,pc,d7.l),d6

sub     SUBPC(pc,d7.w),d6
sub     (SUBPC,pc,d7.w),d6
sub.b   SUBPC(pc,d7.w),d6
sub.b   (SUBPC,pc,d7.w),d6
sub.w   SUBPC(pc,d7.w),d6
sub.w   (SUBPC,pc,d7.w),d6
sub.l   SUBPC(pc,d7.w),d6
sub.l   (SUBPC,pc,d7.w),d6

SUBPC:
sub     SUBPC(pc,d7),d6
sub     (SUBPC,pc,d7),d6
sub.b   SUBPC(pc,d7),d6
sub.b   (SUBPC,pc,d7),d6
sub.w   SUBPC(pc,d7),d6
sub.w   (SUBPC,pc,d7),d6
sub.l   SUBPC(pc,d7),d6
sub.l   (SUBPC,pc,d7),d6

sub     $1234(pc),d7
sub     ($1234,pc),d7
sub.b   $1234(pc),d7
sub.b   ($1234,pc),d7
sub.w   $1234(pc),d7
sub.w   ($1234,pc),d7
sub.l   $1234(pc),d7
sub.l   ($1234,pc),d7

sub     d7,d6
sub.b   d7,d6
sub.w   d7,d6
sub.l   d7,d6

sub     a7,d6
//sub.b   a7,d6 // Illegal Addressing Mode
sub.w   a7,d6
sub.l   a7,d6


sub     ($12345678).l,a7
suba    ($12345678).l,a7
//sub.b   ($12345678).l,a7 // Illegal Addressing Mode
//suba.b  ($12345678).l,a7 // Illegal Addressing Mode
sub.w   ($12345678).l,a7
suba.w  ($12345678).l,a7
sub.l   ($12345678).l,a7
suba.l  ($12345678).l,a7

sub     ($1234).w,a7
suba    ($1234).w,a7
//sub.b   ($1234).w,a7 // Illegal Addressing Mode
//suba.b  ($1234).w,a7 // Illegal Addressing Mode
sub.w   ($1234).w,a7
suba.w  ($1234).w,a7
sub.l   ($1234).w,a7
suba.l  ($1234).w,a7

sub     a7,a6
suba    a7,a6
//sub.b   a7,a6 // Illegal Addressing Mode
//suba.b  a7,a6 // Illegal Addressing Mode
sub.w   a7,a6
suba.w  a7,a6
sub.l   a7,a6
suba.l  a7,a6

sub     (a7),a6
suba    (a7),a6
//sub.b   (a7),a6 // Illegal Addressing Mode
//suba.b  (a7),a6 // Illegal Addressing Mode
sub.w   (a7),a6
suba.w  (a7),a6
sub.l   (a7),a6
suba.l  (a7),a6

sub     (a7)+,a6
suba    (a7)+,a6
//sub.b   (a7)+,a6 // Illegal Addressing Mode
//suba.b  (a7)+,a6 // Illegal Addressing Mode
sub.w   (a7)+,a6
suba.w  (a7)+,a6
sub.l   (a7)+,a6
suba.l  (a7)+,a6

sub     -(a7),a6
suba    -(a7),a6
//sub.b   -(a7),a6 // Illegal Addressing Mode
//suba.b  -(a7),a6 // Illegal Addressing Mode
sub.w   -(a7),a6
suba.w  -(a7),a6
sub.l   -(a7),a6
suba.l  -(a7),a6

sub     $12(a7,d6.l),a5
sub     ($12,a7,d6.l),a5
suba    $12(a7,d6.l),a5
suba    ($12,a7,d6.l),a5
//sub.b   $12(a7,d6.l),a5  // Illegal Addressing Mode
//sub.b   ($12,a7,d6.l),a5 // Illegal Addressing Mode
//suba.b  $12(a7,d6.l),a5  // Illegal Addressing Mode
//suba.b  ($12,a7,d6.l),a5 // Illegal Addressing Mode
sub.w   $12(a7,d6.l),a5
sub.w   ($12,a7,d6.l),a5
suba.w  $12(a7,d6.l),a5
suba.w  ($12,a7,d6.l),a5
sub.l   $12(a7,d6.l),a5
sub.l   ($12,a7,d6.l),a5
suba.l  $12(a7,d6.l),a5
suba.l  ($12,a7,d6.l),a5

sub     $12(a7,d6.w),a5
sub     ($12,a7,d6.w),a5
suba    $12(a7,d6.w),a5
suba    ($12,a7,d6.w),a5
//sub.b   $12(a7,d6.w),a5  // Illegal Addressing Mode
//sub.b   ($12,a7,d6.w),a5 // Illegal Addressing Mode
//suba.b  $12(a7,d6.w),a5  // Illegal Addressing Mode
//suba.b  ($12,a7,d6.w),a5 // Illegal Addressing Mode
sub.w   $12(a7,d6.w),a5
sub.w   ($12,a7,d6.w),a5
suba.w  $12(a7,d6.w),a5
suba.w  ($12,a7,d6.w),a5
sub.l   $12(a7,d6.w),a5
sub.l   ($12,a7,d6.w),a5
suba.l  $12(a7,d6.w),a5
suba.l  ($12,a7,d6.w),a5

sub     $12(a7,d6),a5
sub     ($12,a7,d6),a5
suba    $12(a7,d6),a5
suba    ($12,a7,d6),a5
//sub.b   $12(a7,d6),a5  // Illegal Addressing Mode
//sub.b   ($12,a7,d6),a5 // Illegal Addressing Mode
//suba.b  $12(a7,d6),a5  // Illegal Addressing Mode
//suba.b  ($12,a7,d6),a5 // Illegal Addressing Mode
sub.w   $12(a7,d6),a5
sub.w   ($12,a7,d6),a5
suba.w  $12(a7,d6),a5
suba.w  ($12,a7,d6),a5
sub.l   $12(a7,d6),a5
sub.l   ($12,a7,d6),a5
suba.l  $12(a7,d6),a5
suba.l  ($12,a7,d6),a5

sub     $1234(a7),a6
sub     ($1234,a7),a6
suba    $1234(a7),a6
suba    ($1234,a7),a6
//sub.b   $1234(a7),a6  // Illegal Addressing Mode
//sub.b   ($1234,a7),a6 // Illegal Addressing Mode
//suba.b  $1234(a7),a6  // Illegal Addressing Mode
//suba.b  ($1234,a7),a6 // Illegal Addressing Mode
sub.w   $1234(a7),a6
sub.w   ($1234,a7),a6
suba.w  $1234(a7),a6
suba.w  ($1234,a7),a6
sub.l   $1234(a7),a6
sub.l   ($1234,a7),a6
suba.l  $1234(a7),a6
suba.l  ($1234,a7),a6


sub     SUBAPC(pc,d7.l),a6
sub     (SUBAPC,pc,d7.l),a6
suba    SUBAPC(pc,d7.l),a6
suba    (SUBAPC,pc,d7.l),a6
//sub.b   SUBAPC(pc,d7.l),a6  // Illegal Addressing Mode
//sub.b   (SUBAPC,pc,d7.l),a6 // Illegal Addressing Mode
//suba.b  SUBAPC(pc,d7.l),a6  // Illegal Addressing Mode
//suba.b  (SUBAPC,pc,d7.l),a6 // Illegal Addressing Mode
sub.w   SUBAPC(pc,d7.l),a6
sub.w   (SUBAPC,pc,d7.l),a6
suba.w  SUBAPC(pc,d7.l),a6
suba.w  (SUBAPC,pc,d7.l),a6
sub.l   SUBAPC(pc,d7.l),a6
sub.l   (SUBAPC,pc,d7.l),a6
suba.l  SUBAPC(pc,d7.l),a6
suba.l  (SUBAPC,pc,d7.l),a6

sub     SUBAPC(pc,d7.w),a6
sub     (SUBAPC,pc,d7.w),a6
suba    SUBAPC(pc,d7.w),a6
suba    (SUBAPC,pc,d7.w),a6
//sub.b   SUBAPC(pc,d7.w),a6  // Illegal Addressing Mode
//sub.b   (SUBAPC,pc,d7.w),a6 // Illegal Addressing Mode
//suba.b  SUBAPC(pc,d7.w),a6  // Illegal Addressing Mode
//suba.b  (SUBAPC,pc,d7.w),a6 // Illegal Addressing Mode
sub.w   SUBAPC(pc,d7.w),a6
sub.w   (SUBAPC,pc,d7.w),a6
suba.w  SUBAPC(pc,d7.w),a6
suba.w  (SUBAPC,pc,d7.w),a6
sub.l   SUBAPC(pc,d7.w),a6
sub.l   (SUBAPC,pc,d7.w),a6
suba.l  SUBAPC(pc,d7.w),a6
suba.l  (SUBAPC,pc,d7.w),a6

SUBAPC:
sub     SUBAPC(pc,d7),a6
sub     (SUBAPC,pc,d7),a6
suba    SUBAPC(pc,d7),a6
suba    (SUBAPC,pc,d7),a6
//sub.b   SUBAPC(pc,d7),a6  // Illegal Addressing Mode
//sub.b   (SUBAPC,pc,d7),a6 // Illegal Addressing Mode
//suba.b  SUBAPC(pc,d7),a6  // Illegal Addressing Mode
//suba.b  (SUBAPC,pc,d7),a6 // Illegal Addressing Mode
sub.w   SUBAPC(pc,d7),a6
sub.w   (SUBAPC,pc,d7),a6
suba.w  SUBAPC(pc,d7),a6
suba.w  (SUBAPC,pc,d7),a6
sub.l   SUBAPC(pc,d7),a6
sub.l   (SUBAPC,pc,d7),a6
suba.l  SUBAPC(pc,d7),a6
suba.l  (SUBAPC,pc,d7),a6

sub     $1234(pc),a7
sub     ($1234,pc),a7
suba    $1234(pc),a7
suba    ($1234,pc),a7
//sub.b   $1234(pc),a7  // Illegal Addressing Mode
//sub.b   ($1234,pc),a7 // Illegal Addressing Mode
//suba.b  $1234(pc),a7  // Illegal Addressing Mode
//suba.b  ($1234,pc),a7 // Illegal Addressing Mode
sub.w   $1234(pc),a7
sub.w   ($1234,pc),a7
suba.w  $1234(pc),a7
suba.w  ($1234,pc),a7
sub.l   $1234(pc),a7
sub.l   ($1234,pc),a7
suba.l  $1234(pc),a7
suba.l  ($1234,pc),a7

sub     d7,a6
suba    d7,a6
//sub.b   d7,a6 // Illegal Addressing Mode
//suba.b  d7,a6 // Illegal Addressing Mode
sub.w   d7,a6
suba.w  d7,a6
sub.l   d7,a6
suba.l  d7,a6


sub     #$FEDC,($12345678).l
subi    #$FEDC,($12345678).l
sub.b   #$FE,($12345678).l
subi.b  #$FE,($12345678).l
sub.w   #$FEDC,($12345678).l
subi.w  #$FEDC,($12345678).l
sub.l   #$FEDCBA98,($12345678).l
subi.l  #$FEDCBA98,($12345678).l

sub     #$FEDC,($1234).w
subi    #$FEDC,($1234).w
sub.b   #$FE,($1234).w
subi.b  #$FE,($1234).w
sub.w   #$FEDC,($1234).w
subi.w  #$FEDC,($1234).w
sub.l   #$FEDCBA98,($1234).w
subi.l  #$FEDCBA98,($1234).w

sub     #$FEDC,(a7)
subi    #$FEDC,(a7)
sub.b   #$FE,(a7)
subi.b  #$FE,(a7)
sub.w   #$FEDC,(a7)
subi.w  #$FEDC,(a7)
sub.l   #$FEDCBA98,(a7)
subi.l  #$FEDCBA98,(a7)

sub     #$FEDC,(a7)+
subi    #$FEDC,(a7)+
sub.b   #$FE,(a7)+
subi.b  #$FE,(a7)+
sub.w   #$FEDC,(a7)+
subi.w  #$FEDC,(a7)+
sub.l   #$FEDCBA98,(a7)+
subi.l  #$FEDCBA98,(a7)+

sub     #$FEDC,-(a7)
subi    #$FEDC,-(a7)
sub.b   #$FE,-(a7)
subi.b  #$FE,-(a7)
sub.w   #$FEDC,-(a7)
subi.w  #$FEDC,-(a7)
sub.l   #$FEDCBA98,-(a7)
subi.l  #$FEDCBA98,-(a7)

sub     #$FEDC,$12(a7,d6.l)
sub     #$FEDC,($12,a7,d6.l)
subi    #$FEDC,$12(a7,d6.l)
subi    #$FEDC,($12,a7,d6.l)
sub.b   #$FE,$12(a7,d6.l)
sub.b   #$FE,($12,a7,d6.l)
subi.b  #$FE,$12(a7,d6.l)
subi.b  #$FE,($12,a7,d6.l)
sub.w   #$FEDC,$12(a7,d6.l)
sub.w   #$FEDC,($12,a7,d6.l)
subi.w  #$FEDC,$12(a7,d6.l)
subi.w  #$FEDC,($12,a7,d6.l)
sub.l   #$FEDCBA98,$12(a7,d6.l)
sub.l   #$FEDCBA98,($12,a7,d6.l)
subi.l  #$FEDCBA98,$12(a7,d6.l)
subi.l  #$FEDCBA98,($12,a7,d6.l)

sub     #$FEDC,$12(a7,d6.w)
sub     #$FEDC,($12,a7,d6.w)
subi    #$FEDC,$12(a7,d6.w)
subi    #$FEDC,($12,a7,d6.w)
sub.b   #$FE,$12(a7,d6.w)
sub.b   #$FE,($12,a7,d6.w)
subi.b  #$FE,$12(a7,d6.w)
subi.b  #$FE,($12,a7,d6.w)
sub.w   #$FEDC,$12(a7,d6.w)
sub.w   #$FEDC,($12,a7,d6.w)
subi.w  #$FEDC,$12(a7,d6.w)
subi.w  #$FEDC,($12,a7,d6.w)
sub.l   #$FEDCBA98,$12(a7,d6.w)
sub.l   #$FEDCBA98,($12,a7,d6.w)
subi.l  #$FEDCBA98,$12(a7,d6.w)
subi.l  #$FEDCBA98,($12,a7,d6.w)

sub     #$FEDC,$12(a7,d6)
sub     #$FEDC,($12,a7,d6)
subi    #$FEDC,$12(a7,d6)
subi    #$FEDC,($12,a7,d6)
sub.b   #$FE,$12(a7,d6)
sub.b   #$FE,($12,a7,d6)
subi.b  #$FE,$12(a7,d6)
subi.b  #$FE,($12,a7,d6)
sub.w   #$FEDC,$12(a7,d6)
sub.w   #$FEDC,($12,a7,d6)
subi.w  #$FEDC,$12(a7,d6)
subi.w  #$FEDC,($12,a7,d6)
sub.l   #$FEDCBA98,$12(a7,d6)
sub.l   #$FEDCBA98,($12,a7,d6)
subi.l  #$FEDCBA98,$12(a7,d6)
subi.l  #$FEDCBA98,($12,a7,d6)

sub     #$FEDC,$1234(a7)
sub     #$FEDC,($1234,a7)
subi    #$FEDC,$1234(a7)
subi    #$FEDC,($1234,a7)
sub.b   #$FE,$1234(a7)
sub.b   #$FE,($1234,a7)
subi.b  #$FE,$1234(a7)
subi.b  #$FE,($1234,a7)
sub.w   #$FEDC,$1234(a7)
sub.w   #$FEDC,($1234,a7)
subi.w  #$FEDC,$1234(a7)
subi.w  #$FEDC,($1234,a7)
sub.l   #$FEDCBA98,$1234(a7)
sub.l   #$FEDCBA98,($1234,a7)
subi.l  #$FEDCBA98,$1234(a7)
subi.l  #$FEDCBA98,($1234,a7)

sub     #$FEDC,a7
suba    #$FEDC,a7
subi    #$FEDC,a7
//sub.b   #$FE,a7 // Illegal Addressing Mode
//suba.b  #$FE,a7 // Illegal Addressing Mode
//subi.b  #$FE,a7 // Illegal Addressing Mode
sub.w   #$FEDC,a7
suba.w  #$FEDC,a7
subi.w  #$FEDC,a7
sub.l   #$FEDCBA98,a7
suba.l  #$FEDCBA98,a7
subi.l  #$FEDCBA98,a7

sub     #$FEDC,d7
subi    #$FEDC,d7
sub.b   #$FE,d7
subi.b  #$FE,d7
sub.w   #$FEDC,d7
subi.w  #$FEDC,d7
sub.l   #$FEDCBA98,d7
subi.l  #$FEDCBA98,d7


sub     $1234.w,d7
sub.b   $1234.w,d7
sub.w   $1234.w,d7
sub.l   $1234.w,d7

sub     d7,$1234.w
sub.b   d7,$1234.w
sub.w   d7,$1234.w
sub.l   d7,$1234.w

sub     $12345678.l,d7
sub.b   $12345678.l,d7
sub.w   $12345678.l,d7
sub.l   $12345678.l,d7

sub     d7,$12345678.l
sub.b   d7,$12345678.l
sub.w   d7,$12345678.l
sub.l   d7,$12345678.l

sub     $12345678,d7
sub.b   $12345678,d7
sub.w   $12345678,d7
sub.l   $12345678,d7

sub     d7,$12345678
sub.b   d7,$12345678
sub.w   d7,$12345678
sub.l   d7,$12345678

sub     $1234.w,a7
suba    $1234.w,a7
//sub.b   $1234.w,a7 // Illegal Addressing Mode
//suba.b  $1234.w,a7 // Illegal Addressing Mode
sub.w   $1234.w,a7
suba.w  $1234.w,a7
sub.l   $1234.w,a7
suba.l  $1234.w,a7

sub     $12345678.l,a7
suba    $12345678.l,a7
//sub.b   $12345678.l,a7 // Illegal Addressing Mode
//suba.b  $12345678.l,a7 // Illegal Addressing Mode
sub.w   $12345678.l,a7
suba.w  $12345678.l,a7
sub.l   $12345678.l,a7
suba.l  $12345678.l,a7

sub     $12345678,a7
suba    $12345678,a7
//sub.b   $12345678,a7 // Illegal Addressing Mode
//suba.b  $12345678,a7 // Illegal Addressing Mode
sub.w   $12345678,a7
suba.w  $12345678,a7
sub.l   $12345678,a7
suba.l  $12345678,a7

sub     #$FEDC,$1234.w
subi    #$FEDC,$1234.w
sub.b   #$FE,$1234.w
subi.b  #$FE,$1234.w
sub.w   #$FEDC,$1234.w
subi.w  #$FEDC,$1234.w
sub.l   #$FEDCBA98,$1234.w
subi.l  #$FEDCBA98,$1234.w

sub     #$FEDC,$12345678.l
subi    #$FEDC,$12345678.l
sub.b   #$FE,$12345678.l
subi.b  #$FE,$12345678.l
sub.w   #$FEDC,$12345678.l
subi.w  #$FEDC,$12345678.l
sub.l   #$FEDCBA98,$12345678.l
subi.l  #$FEDCBA98,$12345678.l

sub     #$FEDC,$12345678
subi    #$FEDC,$12345678
sub.b   #$FE,$12345678
subi.b  #$FE,$12345678
sub.w   #$FEDC,$12345678
subi.w  #$FEDC,$12345678
sub.l   #$FEDCBA98,$12345678
subi.l  #$FEDCBA98,$12345678


subq    #8,($12345678).l
subq.b  #8,($12345678).l
subq.w  #7,($12345678).l
subq.l  #6,($12345678).l

subq    #8,($1234).w
subq.b  #8,($1234).w
subq.w  #7,($1234).w
subq.l  #6,($1234).w

subq    #8,(a7)
subq.b  #8,(a7)
subq.w  #7,(a7)
subq.l  #6,(a7)

subq    #8,(a7)+
subq.b  #8,(a7)+
subq.w  #7,(a7)+
subq.l  #6,(a7)+

subq    #8,-(a7)
subq.b  #8,-(a7)
subq.w  #7,-(a7)
subq.l  #6,-(a7)

subq    #8,$12(a7,d6.l)
subq    #8,($12,a7,d6.l)
subq.b  #8,$12(a7,d6.l)
subq.b  #8,($12,a7,d6.l)
subq.w  #7,$12(a7,d6.l)
subq.w  #7,($12,a7,d6.l)
subq.l  #6,$12(a7,d6.l)
subq.l  #6,($12,a7,d6.l)

subq    #8,$12(a7,d6.w)
subq    #8,($12,a7,d6.w)
subq.b  #8,$12(a7,d6.w)
subq.b  #8,($12,a7,d6.w)
subq.w  #7,$12(a7,d6.w)
subq.w  #7,($12,a7,d6.w)
subq.l  #6,$12(a7,d6.w)
subq.l  #6,($12,a7,d6.w)

subq    #8,$12(a7,d6)
subq    #8,($12,a7,d6)
subq.b  #8,$12(a7,d6)
subq.b  #8,($12,a7,d6)
subq.w  #7,$12(a7,d6)
subq.w  #7,($12,a7,d6)
subq.l  #6,$12(a7,d6)
subq.l  #6,($12,a7,d6)

subq    #8,$1234(a7)
subq    #8,($1234,a7)
subq.b  #8,$1234(a7)
subq.b  #8,($1234,a7)
subq.w  #7,$1234(a7)
subq.w  #7,($1234,a7)
subq.l  #6,$1234(a7)
subq.l  #6,($1234,a7)

subq    #8,d7
subq.b  #8,d7
subq.w  #7,d7
subq.l  #6,d7

subq    #8,a7
//subq.b  #8,a7 // Illegal Addressing Mode
subq.w  #7,a7
subq.l  #6,a7


subq    #8,$1234.w
subq.b  #8,$1234.w
subq.w  #7,$1234.w
subq.l  #6,$1234.w

subq    #8,$12345678.l
subq.b  #8,$12345678.l
subq.w  #7,$12345678.l
subq.l  #6,$12345678.l

subq    #8,$12345678
subq.b  #8,$12345678
subq.w  #7,$12345678
subq.l  #6,$12345678


subx    d7,d6
subx.b  d7,d6
subx.w  d7,d6
subx.l  d7,d6

subx    -(a7),-(a6)
subx.b  -(a7),-(a6)
subx.w  -(a7),-(a6)
subx.l  -(a7),-(a6)


sbcd    d7,d6
sbcd.b  d7,d6
//sbcd.w  d7,d6 // Bad Size
//sbcd.l  d7,d6 // Bad Size

sbcd    -(a7),-(a6)
sbcd.b  -(a7),-(a6)
//sbcd.w  -(a7),-(a6) // Bad Size
//sbcd.l  -(a7),-(a6) // Bad Size


and     ($12345678).l,d7
and.b   ($12345678).l,d7
and.w   ($12345678).l,d7
and.l   ($12345678).l,d7

and     d7,($12345678).l
and.b   d7,($12345678).l
and.w   d7,($12345678).l
and.l   d7,($12345678).l

and     ($1234).w,d7
and.b   ($1234).w,d7
and.w   ($1234).w,d7
and.l   ($1234).w,d7

and     d7,($1234).w
and.b   d7,($1234).w
and.w   d7,($1234).w
and.l   d7,($1234).w

and     (a7),d6
and.b   (a7),d6
and.w   (a7),d6
and.l   (a7),d6

and     d7,(a6)
and.b   d7,(a6)
and.w   d7,(a6)
and.l   d7,(a6)

and     (a7)+,d6
and.b   (a7)+,d6
and.w   (a7)+,d6
and.l   (a7)+,d6

and     d7,(a6)+
and.b   d7,(a6)+
and.w   d7,(a6)+
and.l   d7,(a6)+

and     -(a7),d6
and.b   -(a7),d6
and.w   -(a7),d6
and.l   -(a7),d6

and     d7,-(a6)
and.b   d7,-(a6)
and.w   d7,-(a6)
and.l   d7,-(a6)

and     $12(a7,d6.l),d5
and     ($12,a7,d6.l),d5
and.b   $12(a7,d6.l),d5
and.b   ($12,a7,d6.l),d5
and.w   $12(a7,d6.l),d5
and.w   ($12,a7,d6.l),d5
and.l   $12(a7,d6.l),d5
and.l   ($12,a7,d6.l),d5

and     d7,$12(a6,d5.l)
and     d7,($12,a6,d5.l)
and.b   d7,$12(a6,d5.l)
and.b   d7,($12,a6,d5.l)
and.w   d7,$12(a6,d5.l)
and.w   d7,($12,a6,d5.l)
and.l   d7,$12(a6,d5.l)
and.l   d7,($12,a6,d5.l)

and     $12(a7,d6.w),d5
and     ($12,a7,d6.w),d5
and.b   $12(a7,d6.w),d5
and.b   ($12,a7,d6.w),d5
and.w   $12(a7,d6.w),d5
and.w   ($12,a7,d6.w),d5
and.l   $12(a7,d6.w),d5
and.l   ($12,a7,d6.w),d5

and     d7,$12(a6,d5.w)
and     d7,($12,a6,d5.w)
and.b   d7,$12(a6,d5.w)
and.b   d7,($12,a6,d5.w)
and.w   d7,$12(a6,d5.w)
and.w   d7,($12,a6,d5.w)
and.l   d7,$12(a6,d5.w)
and.l   d7,($12,a6,d5.w)

and     $12(a7,d6),d5
and     ($12,a7,d6),d5
and.b   $12(a7,d6),d5
and.b   ($12,a7,d6),d5
and.w   $12(a7,d6),d5
and.w   ($12,a7,d6),d5
and.l   $12(a7,d6),d5
and.l   ($12,a7,d6),d5

and     d7,$12(a6,d5)
and     d7,($12,a6,d5)
and.b   d7,$12(a6,d5)
and.b   d7,($12,a6,d5)
and.w   d7,$12(a6,d5)
and.w   d7,($12,a6,d5)
and.l   d7,$12(a6,d5)
and.l   d7,($12,a6,d5)

and     $1234(a7),d6
and     ($1234,a7),d6
and.b   $1234(a7),d6
and.b   ($1234,a7),d6
and.w   $1234(a7),d6
and.w   ($1234,a7),d6
and.l   $1234(a7),d6
and.l   ($1234,a7),d6

and     d7,$1234(a6)
and     d7,($1234,a6)
and.b   d7,$1234(a6)
and.b   d7,($1234,a6)
and.w   d7,$1234(a6)
and.w   d7,($1234,a6)
and.l   d7,$1234(a6)
and.l   d7,($1234,a6)


and     ANDPC(pc,d7.l),d6
and     (ANDPC,pc,d7.l),d6
and.b   ANDPC(pc,d7.l),d6
and.b   (ANDPC,pc,d7.l),d6
and.w   ANDPC(pc,d7.l),d6
and.w   (ANDPC,pc,d7.l),d6
and.l   ANDPC(pc,d7.l),d6
and.l   (ANDPC,pc,d7.l),d6

and     ANDPC(pc,d7.w),d6
and     (ANDPC,pc,d7.w),d6
and.b   ANDPC(pc,d7.w),d6
and.b   (ANDPC,pc,d7.w),d6
and.w   ANDPC(pc,d7.w),d6
and.w   (ANDPC,pc,d7.w),d6
and.l   ANDPC(pc,d7.w),d6
and.l   (ANDPC,pc,d7.w),d6

ANDPC:
and     ANDPC(pc,d7),d6
and     (ANDPC,pc,d7),d6
and.b   ANDPC(pc,d7),d6
and.b   (ANDPC,pc,d7),d6
and.w   ANDPC(pc,d7),d6
and.w   (ANDPC,pc,d7),d6
and.l   ANDPC(pc,d7),d6
and.l   (ANDPC,pc,d7),d6

and     $1234(pc),d7
and     ($1234,pc),d7
and.b   $1234(pc),d7
and.b   ($1234,pc),d7
and.w   $1234(pc),d7
and.w   ($1234,pc),d7
and.l   $1234(pc),d7
and.l   ($1234,pc),d7

and     d7,d6
and.b   d7,d6
and.w   d7,d6
and.l   d7,d6


and     #$FEDC,($12345678).l
andi    #$FEDC,($12345678).l
and.b   #$FE,($12345678).l
andi.b  #$FE,($12345678).l
and.w   #$FEDC,($12345678).l
andi.w  #$FEDC,($12345678).l
and.l   #$FEDCBA98,($12345678).l
andi.l  #$FEDCBA98,($12345678).l

and     #$FEDC,($1234).w
andi    #$FEDC,($1234).w
and.b   #$FE,($1234).w
andi.b  #$FE,($1234).w
and.w   #$FEDC,($1234).w
andi.w  #$FEDC,($1234).w
and.l   #$FEDCBA98,($1234).w
andi.l  #$FEDCBA98,($1234).w

and     #$FEDC,(a7)
andi    #$FEDC,(a7)
and.b   #$FE,(a7)
andi.b  #$FE,(a7)
and.w   #$FEDC,(a7)
andi.w  #$FEDC,(a7)
and.l   #$FEDCBA98,(a7)
andi.l  #$FEDCBA98,(a7)

and     #$FEDC,(a7)+
andi    #$FEDC,(a7)+
and.b   #$FE,(a7)+
andi.b  #$FE,(a7)+
and.w   #$FEDC,(a7)+
andi.w  #$FEDC,(a7)+
and.l   #$FEDCBA98,(a7)+
andi.l  #$FEDCBA98,(a7)+

and     #$FEDC,-(a7)
andi    #$FEDC,-(a7)
and.b   #$FE,-(a7)
andi.b  #$FE,-(a7)
and.w   #$FEDC,-(a7)
andi.w  #$FEDC,-(a7)
and.l   #$FEDCBA98,-(a7)
andi.l  #$FEDCBA98,-(a7)

and     #$FEDC,$12(a7,d6.l)
and     #$FEDC,($12,a7,d6.l)
andi    #$FEDC,$12(a7,d6.l)
andi    #$FEDC,($12,a7,d6.l)
and.b   #$FE,$12(a7,d6.l)
and.b   #$FE,($12,a7,d6.l)
andi.b  #$FE,$12(a7,d6.l)
andi.b  #$FE,($12,a7,d6.l)
and.w   #$FEDC,$12(a7,d6.l)
and.w   #$FEDC,($12,a7,d6.l)
andi.w  #$FEDC,$12(a7,d6.l)
andi.w  #$FEDC,($12,a7,d6.l)
and.l   #$FEDCBA98,$12(a7,d6.l)
and.l   #$FEDCBA98,($12,a7,d6.l)
andi.l  #$FEDCBA98,$12(a7,d6.l)
andi.l  #$FEDCBA98,($12,a7,d6.l)

and     #$FEDC,$12(a7,d6.w)
and     #$FEDC,($12,a7,d6.w)
andi    #$FEDC,$12(a7,d6.w)
andi    #$FEDC,($12,a7,d6.w)
and.b   #$FE,$12(a7,d6.w)
and.b   #$FE,($12,a7,d6.w)
andi.b  #$FE,$12(a7,d6.w)
andi.b  #$FE,($12,a7,d6.w)
and.w   #$FEDC,$12(a7,d6.w)
and.w   #$FEDC,($12,a7,d6.w)
andi.w  #$FEDC,$12(a7,d6.w)
andi.w  #$FEDC,($12,a7,d6.w)
and.l   #$FEDCBA98,$12(a7,d6.w)
and.l   #$FEDCBA98,($12,a7,d6.w)
andi.l  #$FEDCBA98,$12(a7,d6.w)
andi.l  #$FEDCBA98,($12,a7,d6.w)

and     #$FEDC,$12(a7,d6)
and     #$FEDC,($12,a7,d6)
andi    #$FEDC,$12(a7,d6)
andi    #$FEDC,($12,a7,d6)
and.b   #$FE,$12(a7,d6)
and.b   #$FE,($12,a7,d6)
andi.b  #$FE,$12(a7,d6)
andi.b  #$FE,($12,a7,d6)
and.w   #$FEDC,$12(a7,d6)
and.w   #$FEDC,($12,a7,d6)
andi.w  #$FEDC,$12(a7,d6)
andi.w  #$FEDC,($12,a7,d6)
and.l   #$FEDCBA98,$12(a7,d6)
and.l   #$FEDCBA98,($12,a7,d6)
andi.l  #$FEDCBA98,$12(a7,d6)
andi.l  #$FEDCBA98,($12,a7,d6)

and     #$FEDC,$1234(a7)
and     #$FEDC,($1234,a7)
andi    #$FEDC,$1234(a7)
andi    #$FEDC,($1234,a7)
and.b   #$FE,$1234(a7)
and.b   #$FE,($1234,a7)
andi.b  #$FE,$1234(a7)
andi.b  #$FE,($1234,a7)
and.w   #$FEDC,$1234(a7)
and.w   #$FEDC,($1234,a7)
andi.w  #$FEDC,$1234(a7)
andi.w  #$FEDC,($1234,a7)
and.l   #$FEDCBA98,$1234(a7)
and.l   #$FEDCBA98,($1234,a7)
andi.l  #$FEDCBA98,$1234(a7)
andi.l  #$FEDCBA98,($1234,a7)

and     #$FEDC,d7
andi    #$FEDC,d7
and.b   #$FE,d7
andi.b  #$FE,d7
and.w   #$FEDC,d7
andi.w  #$FEDC,d7
and.l   #$FEDCBA98,d7
andi.l  #$FEDCBA98,d7


and     #$FE,ccr
andi    #$FE,ccr
and.b   #$FE,ccr
andi.b  #$FE,ccr
and.w   #$FEDC,ccr
andi.w  #$FEDC,ccr
and.l   #$FEDCBA98,ccr
andi.l  #$FEDCBA98,ccr

and     #$FEDC,sr
andi    #$FEDC,sr
and.b   #$FE,sr
andi.b  #$FE,sr
and.w   #$FEDC,sr
andi.w  #$FEDC,sr
and.l   #$FEDCBA98,sr
andi.l  #$FEDCBA98,sr

and     $1234.w,d7
and.b   $1234.w,d7
and.w   $1234.w,d7
and.l   $1234.w,d7

and     d7,$1234.w
and.b   d7,$1234.w
and.w   d7,$1234.w
and.l   d7,$1234.w

and     $12345678.l,d7
and.b   $12345678.l,d7
and.w   $12345678.l,d7
and.l   $12345678.l,d7

and     d7,$12345678.l
and.b   d7,$12345678.l
and.w   d7,$12345678.l
and.l   d7,$12345678.l

and     $12345678,d7
and.b   $12345678,d7
and.w   $12345678,d7
and.l   $12345678,d7

and     d7,$12345678
and.b   d7,$12345678
and.w   d7,$12345678
and.l   d7,$12345678

and     #$FEDC,$1234.w
andi    #$FEDC,$1234.w
and.b   #$FE,$1234.w
andi.b  #$FE,$1234.w
and.w   #$FEDC,$1234.w
andi.w  #$FEDC,$1234.w
and.l   #$FEDCBA98,$1234.w
andi.l  #$FEDCBA98,$1234.w

and     #$FEDC,$12345678.l
andi    #$FEDC,$12345678.l
and.b   #$FE,$12345678.l
andi.b  #$FE,$12345678.l
and.w   #$FEDC,$12345678.l
andi.w  #$FEDC,$12345678.l
and.l   #$FEDCBA98,$12345678.l
andi.l  #$FEDCBA98,$12345678.l

and     #$FEDC,$12345678
andi    #$FEDC,$12345678
and.b   #$FE,$12345678
andi.b  #$FE,$12345678
and.w   #$FEDC,$12345678
andi.w  #$FEDC,$12345678
and.l   #$FEDCBA98,$12345678
andi.l  #$FEDCBA98,$12345678


or      ($12345678).l,d7
or.b    ($12345678).l,d7
or.w    ($12345678).l,d7
or.l    ($12345678).l,d7

or      d7,($12345678).l
or.b    d7,($12345678).l
or.w    d7,($12345678).l
or.l    d7,($12345678).l

or      ($1234).w,d7
or.b    ($1234).w,d7
or.w    ($1234).w,d7
or.l    ($1234).w,d7

or      d7,($1234).w
or.b    d7,($1234).w
or.w    d7,($1234).w
or.l    d7,($1234).w

or      (a7),d6
or.b    (a7),d6
or.w    (a7),d6
or.l    (a7),d6

or      d7,(a6)
or.b    d7,(a6)
or.w    d7,(a6)
or.l    d7,(a6)

or      (a7)+,d6
or.b    (a7)+,d6
or.w    (a7)+,d6
or.l    (a7)+,d6

or      d7,(a6)+
or.b    d7,(a6)+
or.w    d7,(a6)+
or.l    d7,(a6)+

or      -(a7),d6
or.b    -(a7),d6
or.w    -(a7),d6
or.l    -(a7),d6

or      d7,-(a6)
or.b    d7,-(a6)
or.w    d7,-(a6)
or.l    d7,-(a6)

or      $12(a7,d6.l),d5
or      ($12,a7,d6.l),d5
or.b    $12(a7,d6.l),d5
or.b    ($12,a7,d6.l),d5
or.w    $12(a7,d6.l),d5
or.w    ($12,a7,d6.l),d5
or.l    $12(a7,d6.l),d5
or.l    ($12,a7,d6.l),d5

or      d7,$12(a6,d5.l)
or      d7,($12,a6,d5.l)
or.b    d7,$12(a6,d5.l)
or.b    d7,($12,a6,d5.l)
or.w    d7,$12(a6,d5.l)
or.w    d7,($12,a6,d5.l)
or.l    d7,$12(a6,d5.l)
or.l    d7,($12,a6,d5.l)

or      $12(a7,d6.w),d5
or      ($12,a7,d6.w),d5
or.b    $12(a7,d6.w),d5
or.b    ($12,a7,d6.w),d5
or.w    $12(a7,d6.w),d5
or.w    ($12,a7,d6.w),d5
or.l    $12(a7,d6.w),d5
or.l    ($12,a7,d6.w),d5

or      d7,$12(a6,d5.w)
or      d7,($12,a6,d5.w)
or.b    d7,$12(a6,d5.w)
or.b    d7,($12,a6,d5.w)
or.w    d7,$12(a6,d5.w)
or.w    d7,($12,a6,d5.w)
or.l    d7,$12(a6,d5.w)
or.l    d7,($12,a6,d5.w)

or      $12(a7,d6),d5
or      ($12,a7,d6),d5
or.b    $12(a7,d6),d5
or.b    ($12,a7,d6),d5
or.w    $12(a7,d6),d5
or.w    ($12,a7,d6),d5
or.l    $12(a7,d6),d5
or.l    ($12,a7,d6),d5

or      d7,$12(a6,d5)
or      d7,($12,a6,d5)
or.b    d7,$12(a6,d5)
or.b    d7,($12,a6,d5)
or.w    d7,$12(a6,d5)
or.w    d7,($12,a6,d5)
or.l    d7,$12(a6,d5)
or.l    d7,($12,a6,d5)

or      $1234(a7),d6
or      ($1234,a7),d6
or.b    $1234(a7),d6
or.b    ($1234,a7),d6
or.w    $1234(a7),d6
or.w    ($1234,a7),d6
or.l    $1234(a7),d6
or.l    ($1234,a7),d6

or      d7,$1234(a6)
or      d7,($1234,a6)
or.b    d7,$1234(a6)
or.b    d7,($1234,a6)
or.w    d7,$1234(a6)
or.w    d7,($1234,a6)
or.l    d7,$1234(a6)
or.l    d7,($1234,a6)


or      ORPC(pc,d7.l),d6
or      (ORPC,pc,d7.l),d6
or.b    ORPC(pc,d7.l),d6
or.b    (ORPC,pc,d7.l),d6
or.w    ORPC(pc,d7.l),d6
or.w    (ORPC,pc,d7.l),d6
or.l    ORPC(pc,d7.l),d6
or.l    (ORPC,pc,d7.l),d6

or      ORPC(pc,d7.w),d6
or      (ORPC,pc,d7.w),d6
or.b    ORPC(pc,d7.w),d6
or.b    (ORPC,pc,d7.w),d6
or.w    ORPC(pc,d7.w),d6
or.w    (ORPC,pc,d7.w),d6
or.l    ORPC(pc,d7.w),d6
or.l    (ORPC,pc,d7.w),d6

ORPC:
or      ORPC(pc,d7),d6
or      (ORPC,pc,d7),d6
or.b    ORPC(pc,d7),d6
or.b    (ORPC,pc,d7),d6
or.w    ORPC(pc,d7),d6
or.w    (ORPC,pc,d7),d6
or.l    ORPC(pc,d7),d6
or.l    (ORPC,pc,d7),d6

or      $1234(pc),d7
or      ($1234,pc),d7
or.b    $1234(pc),d7
or.b    ($1234,pc),d7
or.w    $1234(pc),d7
or.w    ($1234,pc),d7
or.l    $1234(pc),d7
or.l    ($1234,pc),d7

or      d7,d6
or.b    d7,d6
or.w    d7,d6
or.l    d7,d6


or      #$FEDC,($12345678).l
ori     #$FEDC,($12345678).l
or.b    #$FE,($12345678).l
ori.b   #$FE,($12345678).l
or.w    #$FEDC,($12345678).l
ori.w   #$FEDC,($12345678).l
or.l    #$FEDCBA98,($12345678).l
ori.l   #$FEDCBA98,($12345678).l

or      #$FEDC,($1234).w
ori     #$FEDC,($1234).w
or.b    #$FE,($1234).w
ori.b   #$FE,($1234).w
or.w    #$FEDC,($1234).w
ori.w   #$FEDC,($1234).w
or.l    #$FEDCBA98,($1234).w
ori.l   #$FEDCBA98,($1234).w

or      #$FEDC,(a7)
ori     #$FEDC,(a7)
or.b    #$FE,(a7)
ori.b   #$FE,(a7)
or.w    #$FEDC,(a7)
ori.w   #$FEDC,(a7)
or.l    #$FEDCBA98,(a7)
ori.l   #$FEDCBA98,(a7)

or      #$FEDC,(a7)+
ori     #$FEDC,(a7)+
or.b    #$FE,(a7)+
ori.b   #$FE,(a7)+
or.w    #$FEDC,(a7)+
ori.w   #$FEDC,(a7)+
or.l    #$FEDCBA98,(a7)+
ori.l   #$FEDCBA98,(a7)+

or      #$FEDC,-(a7)
ori     #$FEDC,-(a7)
or.b    #$FE,-(a7)
ori.b   #$FE,-(a7)
or.w    #$FEDC,-(a7)
ori.w   #$FEDC,-(a7)
or.l    #$FEDCBA98,-(a7)
ori.l   #$FEDCBA98,-(a7)

or      #$FEDC,$12(a7,d6.l)
or      #$FEDC,($12,a7,d6.l)
ori     #$FEDC,$12(a7,d6.l)
ori     #$FEDC,($12,a7,d6.l)
or.b    #$FE,$12(a7,d6.l)
or.b    #$FE,($12,a7,d6.l)
ori.b   #$FE,$12(a7,d6.l)
ori.b   #$FE,($12,a7,d6.l)
or.w    #$FEDC,$12(a7,d6.l)
or.w    #$FEDC,($12,a7,d6.l)
ori.w   #$FEDC,$12(a7,d6.l)
ori.w   #$FEDC,($12,a7,d6.l)
or.l    #$FEDCBA98,$12(a7,d6.l)
or.l    #$FEDCBA98,($12,a7,d6.l)
ori.l   #$FEDCBA98,$12(a7,d6.l)
ori.l   #$FEDCBA98,($12,a7,d6.l)

or      #$FEDC,$12(a7,d6.w)
or      #$FEDC,($12,a7,d6.w)
ori     #$FEDC,$12(a7,d6.w)
ori     #$FEDC,($12,a7,d6.w)
or.b    #$FE,$12(a7,d6.w)
or.b    #$FE,($12,a7,d6.w)
ori.b   #$FE,$12(a7,d6.w)
ori.b   #$FE,($12,a7,d6.w)
or.w    #$FEDC,$12(a7,d6.w)
or.w    #$FEDC,($12,a7,d6.w)
ori.w   #$FEDC,$12(a7,d6.w)
ori.w   #$FEDC,($12,a7,d6.w)
or.l    #$FEDCBA98,$12(a7,d6.w)
or.l    #$FEDCBA98,($12,a7,d6.w)
ori.l   #$FEDCBA98,$12(a7,d6.w)
ori.l   #$FEDCBA98,($12,a7,d6.w)

or      #$FEDC,$12(a7,d6)
or      #$FEDC,($12,a7,d6)
ori     #$FEDC,$12(a7,d6)
ori     #$FEDC,($12,a7,d6)
or.b    #$FE,$12(a7,d6)
or.b    #$FE,($12,a7,d6)
ori.b   #$FE,$12(a7,d6)
ori.b   #$FE,($12,a7,d6)
or.w    #$FEDC,$12(a7,d6)
or.w    #$FEDC,($12,a7,d6)
ori.w   #$FEDC,$12(a7,d6)
ori.w   #$FEDC,($12,a7,d6)
or.l    #$FEDCBA98,$12(a7,d6)
or.l    #$FEDCBA98,($12,a7,d6)
ori.l   #$FEDCBA98,$12(a7,d6)
ori.l   #$FEDCBA98,($12,a7,d6)

or      #$FEDC,$1234(a7)
or      #$FEDC,($1234,a7)
ori     #$FEDC,$1234(a7)
ori     #$FEDC,($1234,a7)
or.b    #$FE,$1234(a7)
or.b    #$FE,($1234,a7)
ori.b   #$FE,$1234(a7)
ori.b   #$FE,($1234,a7)
or.w    #$FEDC,$1234(a7)
or.w    #$FEDC,($1234,a7)
ori.w   #$FEDC,$1234(a7)
ori.w   #$FEDC,($1234,a7)
or.l    #$FEDCBA98,$1234(a7)
or.l    #$FEDCBA98,($1234,a7)
ori.l   #$FEDCBA98,$1234(a7)
ori.l   #$FEDCBA98,($1234,a7)

or      #$FEDC,d7
ori     #$FEDC,d7
or.b    #$FE,d7
ori.b   #$FE,d7
or.w    #$FEDC,d7
ori.w   #$FEDC,d7
or.l    #$FEDCBA98,d7
ori.l   #$FEDCBA98,d7


or      #$FE,ccr
ori     #$FE,ccr
or.b    #$FE,ccr
ori.b   #$FE,ccr
or.w    #$FEDC,ccr
ori.w   #$FEDC,ccr
or.l    #$FEDCBA98,ccr
ori.l   #$FEDCBA98,ccr

or      #$FEDC,sr
ori     #$FEDC,sr
or.b    #$FE,sr
ori.b   #$FE,sr
or.w    #$FEDC,sr
ori.w   #$FEDC,sr
or.l    #$FEDCBA98,sr
ori.l   #$FEDCBA98,sr

or      $1234.w,d7
or.b    $1234.w,d7
or.w    $1234.w,d7
or.l    $1234.w,d7

or      d7,$1234.w
or.b    d7,$1234.w
or.w    d7,$1234.w
or.l    d7,$1234.w

or      $12345678.l,d7
or.b    $12345678.l,d7
or.w    $12345678.l,d7
or.l    $12345678.l,d7

or      d7,$12345678.l
or.b    d7,$12345678.l
or.w    d7,$12345678.l
or.l    d7,$12345678.l

or      $12345678,d7
or.b    $12345678,d7
or.w    $12345678,d7
or.l    $12345678,d7

or      d7,$12345678
or.b    d7,$12345678
or.w    d7,$12345678
or.l    d7,$12345678

or      #$FEDC,$1234.w
ori     #$FEDC,$1234.w
or.b    #$FE,$1234.w
ori.b   #$FE,$1234.w
or.w    #$FEDC,$1234.w
ori.w   #$FEDC,$1234.w
or.l    #$FEDCBA98,$1234.w
ori.l   #$FEDCBA98,$1234.w

or      #$FEDC,$12345678.l
ori     #$FEDC,$12345678.l
or.b    #$FE,$12345678.l
ori.b   #$FE,$12345678.l
or.w    #$FEDC,$12345678.l
ori.w   #$FEDC,$12345678.l
or.l    #$FEDCBA98,$12345678.l
ori.l   #$FEDCBA98,$12345678.l

or      #$FEDC,$12345678
ori     #$FEDC,$12345678
or.b    #$FE,$12345678
ori.b   #$FE,$12345678
or.w    #$FEDC,$12345678
ori.w   #$FEDC,$12345678
or.l    #$FEDCBA98,$12345678
ori.l   #$FEDCBA98,$12345678


eor     d7,($12345678).l
eor.b   d7,($12345678).l
eor.w   d7,($12345678).l
eor.l   d7,($12345678).l

eor     d7,($1234).w
eor.b   d7,($1234).w
eor.w   d7,($1234).w
eor.l   d7,($1234).w

eor     d7,(a6)
eor.b   d7,(a6)
eor.w   d7,(a6)
eor.l   d7,(a6)

eor     d7,(a6)+
eor.b   d7,(a6)+
eor.w   d7,(a6)+
eor.l   d7,(a6)+

eor     d7,-(a6)
eor.b   d7,-(a6)
eor.w   d7,-(a6)
eor.l   d7,-(a6)

eor     d7,$12(a6,d5.l)
eor     d7,($12,a6,d5.l)
eor.b   d7,$12(a6,d5.l)
eor.b   d7,($12,a6,d5.l)
eor.w   d7,$12(a6,d5.l)
eor.w   d7,($12,a6,d5.l)
eor.l   d7,$12(a6,d5.l)
eor.l   d7,($12,a6,d5.l)

eor     d7,$12(a6,d5.w)
eor     d7,($12,a6,d5.w)
eor.b   d7,$12(a6,d5.w)
eor.b   d7,($12,a6,d5.w)
eor.w   d7,$12(a6,d5.w)
eor.w   d7,($12,a6,d5.w)
eor.l   d7,$12(a6,d5.w)
eor.l   d7,($12,a6,d5.w)

eor     d7,$12(a6,d5)
eor     d7,($12,a6,d5)
eor.b   d7,$12(a6,d5)
eor.b   d7,($12,a6,d5)
eor.w   d7,$12(a6,d5)
eor.w   d7,($12,a6,d5)
eor.l   d7,$12(a6,d5)
eor.l   d7,($12,a6,d5)

eor     d7,$1234(a6)
eor     d7,($1234,a6)
eor.b   d7,$1234(a6)
eor.b   d7,($1234,a6)
eor.w   d7,$1234(a6)
eor.w   d7,($1234,a6)
eor.l   d7,$1234(a6)
eor.l   d7,($1234,a6)

eor     d7,d6
eor.b   d7,d6
eor.w   d7,d6
eor.l   d7,d6


eor     #$FEDC,($12345678).l
eori    #$FEDC,($12345678).l
eor.b   #$FE,($12345678).l
eori.b  #$FE,($12345678).l
eor.w   #$FEDC,($12345678).l
eori.w  #$FEDC,($12345678).l
eor.l   #$FEDCBA98,($12345678).l
eori.l  #$FEDCBA98,($12345678).l

eor     #$FEDC,($1234).w
eori    #$FEDC,($1234).w
eor.b   #$FE,($1234).w
eori.b  #$FE,($1234).w
eor.w   #$FEDC,($1234).w
eori.w  #$FEDC,($1234).w
eor.l   #$FEDCBA98,($1234).w
eori.l  #$FEDCBA98,($1234).w

eor     #$FEDC,(a7)
eori    #$FEDC,(a7)
eor.b   #$FE,(a7)
eori.b  #$FE,(a7)
eor.w   #$FEDC,(a7)
eori.w  #$FEDC,(a7)
eor.l   #$FEDCBA98,(a7)
eori.l  #$FEDCBA98,(a7)

eor     #$FEDC,(a7)+
eori    #$FEDC,(a7)+
eor.b   #$FE,(a7)+
eori.b  #$FE,(a7)+
eor.w   #$FEDC,(a7)+
eori.w  #$FEDC,(a7)+
eor.l   #$FEDCBA98,(a7)+
eori.l  #$FEDCBA98,(a7)+

eor     #$FEDC,-(a7)
eori    #$FEDC,-(a7)
eor.b   #$FE,-(a7)
eori.b  #$FE,-(a7)
eor.w   #$FEDC,-(a7)
eori.w  #$FEDC,-(a7)
eor.l   #$FEDCBA98,-(a7)
eori.l  #$FEDCBA98,-(a7)

eor     #$FEDC,$12(a7,d6.l)
eor     #$FEDC,($12,a7,d6.l)
eori    #$FEDC,$12(a7,d6.l)
eori    #$FEDC,($12,a7,d6.l)
eor.b   #$FE,$12(a7,d6.l)
eor.b   #$FE,($12,a7,d6.l)
eori.b  #$FE,$12(a7,d6.l)
eori.b  #$FE,($12,a7,d6.l)
eor.w   #$FEDC,$12(a7,d6.l)
eor.w   #$FEDC,($12,a7,d6.l)
eori.w  #$FEDC,$12(a7,d6.l)
eori.w  #$FEDC,($12,a7,d6.l)
eor.l   #$FEDCBA98,$12(a7,d6.l)
eor.l   #$FEDCBA98,($12,a7,d6.l)
eori.l  #$FEDCBA98,$12(a7,d6.l)
eori.l  #$FEDCBA98,($12,a7,d6.l)

eor     #$FEDC,$12(a7,d6.w)
eor     #$FEDC,($12,a7,d6.w)
eori    #$FEDC,$12(a7,d6.w)
eori    #$FEDC,($12,a7,d6.w)
eor.b   #$FE,$12(a7,d6.w)
eor.b   #$FE,($12,a7,d6.w)
eori.b  #$FE,$12(a7,d6.w)
eori.b  #$FE,($12,a7,d6.w)
eor.w   #$FEDC,$12(a7,d6.w)
eor.w   #$FEDC,($12,a7,d6.w)
eori.w  #$FEDC,$12(a7,d6.w)
eori.w  #$FEDC,($12,a7,d6.w)
eor.l   #$FEDCBA98,$12(a7,d6.w)
eor.l   #$FEDCBA98,($12,a7,d6.w)
eori.l  #$FEDCBA98,$12(a7,d6.w)
eori.l  #$FEDCBA98,($12,a7,d6.w)

eor     #$FEDC,$12(a7,d6)
eor     #$FEDC,($12,a7,d6)
eori    #$FEDC,$12(a7,d6)
eori    #$FEDC,($12,a7,d6)
eor.b   #$FE,$12(a7,d6)
eor.b   #$FE,($12,a7,d6)
eori.b  #$FE,$12(a7,d6)
eori.b  #$FE,($12,a7,d6)
eor.w   #$FEDC,$12(a7,d6)
eor.w   #$FEDC,($12,a7,d6)
eori.w  #$FEDC,$12(a7,d6)
eori.w  #$FEDC,($12,a7,d6)
eor.l   #$FEDCBA98,$12(a7,d6)
eor.l   #$FEDCBA98,($12,a7,d6)
eori.l  #$FEDCBA98,$12(a7,d6)
eori.l  #$FEDCBA98,($12,a7,d6)

eor     #$FEDC,$1234(a7)
eor     #$FEDC,($1234,a7)
eori    #$FEDC,$1234(a7)
eori    #$FEDC,($1234,a7)
eor.b   #$FE,$1234(a7)
eor.b   #$FE,($1234,a7)
eori.b  #$FE,$1234(a7)
eori.b  #$FE,($1234,a7)
eor.w   #$FEDC,$1234(a7)
eor.w   #$FEDC,($1234,a7)
eori.w  #$FEDC,$1234(a7)
eori.w  #$FEDC,($1234,a7)
eor.l   #$FEDCBA98,$1234(a7)
eor.l   #$FEDCBA98,($1234,a7)
eori.l  #$FEDCBA98,$1234(a7)
eori.l  #$FEDCBA98,($1234,a7)

eor     #$FEDC,d7
eori    #$FEDC,d7
eor.b   #$FE,d7
eori.b  #$FE,d7
eor.w   #$FEDC,d7
eori.w  #$FEDC,d7
eor.l   #$FEDCBA98,d7
eori.l  #$FEDCBA98,d7


eor     #$FE,ccr
eori    #$FE,ccr
eor.b   #$FE,ccr
eori.b  #$FE,ccr
eor.w   #$FEDC,ccr
eori.w  #$FEDC,ccr
eor.l   #$FEDCBA98,ccr
eori.l  #$FEDCBA98,ccr

eor     #$FEDC,sr
eori    #$FEDC,sr
eor.b   #$FE,sr
eori.b  #$FE,sr
eor.w   #$FEDC,sr
eori.w  #$FEDC,sr
eor.l   #$FEDCBA98,sr
eori.l  #$FEDCBA98,sr

eor     d7,$1234.w
eor.b   d7,$1234.w
eor.w   d7,$1234.w
eor.l   d7,$1234.w

eor     d7,$12345678.l
eor.b   d7,$12345678.l
eor.w   d7,$12345678.l
eor.l   d7,$12345678.l

eor     d7,$12345678
eor.b   d7,$12345678
eor.w   d7,$12345678
eor.l   d7,$12345678

eor     #$FEDC,$1234.w
eori    #$FEDC,$1234.w
eor.b   #$FE,$1234.w
eori.b  #$FE,$1234.w
eor.w   #$FEDC,$1234.w
eori.w  #$FEDC,$1234.w
eor.l   #$FEDCBA98,$1234.w
eori.l  #$FEDCBA98,$1234.w

eor     #$FEDC,$12345678.l
eori    #$FEDC,$12345678.l
eor.b   #$FE,$12345678.l
eori.b  #$FE,$12345678.l
eor.w   #$FEDC,$12345678.l
eori.w  #$FEDC,$12345678.l
eor.l   #$FEDCBA98,$12345678.l
eori.l  #$FEDCBA98,$12345678.l

eor     #$FEDC,$12345678
eori    #$FEDC,$12345678
eor.b   #$FE,$12345678
eori.b  #$FE,$12345678
eor.w   #$FEDC,$12345678
eori.w  #$FEDC,$12345678
eor.l   #$FEDCBA98,$12345678
eori.l  #$FEDCBA98,$12345678


divs    ($12345678).l,d7
divs.w  ($12345678).l,d7

divs    ($1234).w,d7
divs.w  ($1234).w,d7

divs    (a7),d6
divs.w  (a7),d6

divs    (a7)+,d6
divs.w  (a7)+,d6

divs    -(a7),d6
divs.w  -(a7),d6

divs    $12(a7,d6.l),d5
divs    ($12,a7,d6.l),d5
divs.w  $12(a7,d6.l),d5
divs.w  ($12,a7,d6.l),d5

divs    $12(a7,d6.w),d5
divs    ($12,a7,d6.w),d5
divs.w  $12(a7,d6.w),d5
divs.w  ($12,a7,d6.w),d5

divs    $12(a7,d6),d5
divs    ($12,a7,d6),d5
divs.w  $12(a7,d6),d5
divs.w  ($12,a7,d6),d5

divs    $1234(a7),d6
divs    ($1234,a7),d6
divs.w  $1234(a7),d6
divs.w  ($1234,a7),d6


divs    DIVSPC(pc,d7.l),d6
divs    (DIVSPC,pc,d7.l),d6
divs.w  DIVSPC(pc,d7.l),d6
divs.w  (DIVSPC,pc,d7.l),d6

divs    DIVSPC(pc,d7.w),d6
divs    (DIVSPC,pc,d7.w),d6
divs.w  DIVSPC(pc,d7.w),d6
divs.w  (DIVSPC,pc,d7.w),d6

DIVSPC:
divs    DIVSPC(pc,d7),d6
divs    (DIVSPC,pc,d7),d6
divs.w  DIVSPC(pc,d7),d6
divs.w  (DIVSPC,pc,d7),d6

divs    $1234(pc),d7
divs    ($1234,pc),d7
divs.w  $1234(pc),d7
divs.w  ($1234,pc),d7

divs    d7,d6
divs.w  d7,d6


divs    #$FEDC,d7
divs.w  #$FEDC,d7

divs    $1234.w,d7
divs.w  $1234.w,d7

divs    $12345678.l,d7
divs.w  $12345678.l,d7

divs    $12345678,d7
divs.w  $12345678,d7


divu    ($12345678).l,d7
divu.w  ($12345678).l,d7

divu    ($1234).w,d7
divu.w  ($1234).w,d7

divu    (a7),d6
divu.w  (a7),d6

divu    (a7)+,d6
divu.w  (a7)+,d6

divu    -(a7),d6
divu.w  -(a7),d6

divu    $12(a7,d6.l),d5
divu    ($12,a7,d6.l),d5
divu.w  $12(a7,d6.l),d5
divu.w  ($12,a7,d6.l),d5

divu    $12(a7,d6.w),d5
divu    ($12,a7,d6.w),d5
divu.w  $12(a7,d6.w),d5
divu.w  ($12,a7,d6.w),d5

divu    $12(a7,d6),d5
divu    ($12,a7,d6),d5
divu.w  $12(a7,d6),d5
divu.w  ($12,a7,d6),d5

divu    $1234(a7),d6
divu    ($1234,a7),d6
divu.w  $1234(a7),d6
divu.w  ($1234,a7),d6


divu    DIVUPC(pc,d7.l),d6
divu    (DIVUPC,pc,d7.l),d6
divu.w  DIVUPC(pc,d7.l),d6
divu.w  (DIVUPC,pc,d7.l),d6

divu    DIVUPC(pc,d7.w),d6
divu    (DIVUPC,pc,d7.w),d6
divu.w  DIVUPC(pc,d7.w),d6
divu.w  (DIVUPC,pc,d7.w),d6

DIVUPC:
divu    DIVUPC(pc,d7),d6
divu    (DIVUPC,pc,d7),d6
divu.w  DIVUPC(pc,d7),d6
divu.w  (DIVUPC,pc,d7),d6

divu    $1234(pc),d7
divu    ($1234,pc),d7
divu.w  $1234(pc),d7
divu.w  ($1234,pc),d7

divu    d7,d6
divu.w  d7,d6


divu    #$FEDC,d7
divu.w  #$FEDC,d7

divu    $1234.w,d7
divu.w  $1234.w,d7

divu    $12345678.l,d7
divu.w  $12345678.l,d7

divu    $12345678,d7
divu.w  $12345678,d7


muls    ($12345678).l,d7
muls.w  ($12345678).l,d7

muls    ($1234).w,d7
muls.w  ($1234).w,d7

muls    (a7),d6
muls.w  (a7),d6

muls    (a7)+,d6
muls.w  (a7)+,d6

muls    -(a7),d6
muls.w  -(a7),d6

muls    $12(a7,d6.l),d5
muls    ($12,a7,d6.l),d5
muls.w  $12(a7,d6.l),d5
muls.w  ($12,a7,d6.l),d5

muls    $12(a7,d6.w),d5
muls    ($12,a7,d6.w),d5
muls.w  $12(a7,d6.w),d5
muls.w  ($12,a7,d6.w),d5

muls    $12(a7,d6),d5
muls    ($12,a7,d6),d5
muls.w  $12(a7,d6),d5
muls.w  ($12,a7,d6),d5

muls    $1234(a7),d6
muls    ($1234,a7),d6
muls.w  $1234(a7),d6
muls.w  ($1234,a7),d6


muls    MULSPC(pc,d7.l),d6
muls    (MULSPC,pc,d7.l),d6
muls.w  MULSPC(pc,d7.l),d6
muls.w  (MULSPC,pc,d7.l),d6

muls    MULSPC(pc,d7.w),d6
muls    (MULSPC,pc,d7.w),d6
muls.w  MULSPC(pc,d7.w),d6
muls.w  (MULSPC,pc,d7.w),d6

MULSPC:
muls    MULSPC(pc,d7),d6
muls    (MULSPC,pc,d7),d6
muls.w  MULSPC(pc,d7),d6
muls.w  (MULSPC,pc,d7),d6

muls    $1234(pc),d7
muls    ($1234,pc),d7
muls.w  $1234(pc),d7
muls.w  ($1234,pc),d7

muls    d7,d6
muls.w  d7,d6


muls    #$FEDC,d7
muls.w  #$FEDC,d7

muls    $1234.w,d7
muls.w  $1234.w,d7

muls    $12345678.l,d7
muls.w  $12345678.l,d7

muls    $12345678,d7
muls.w  $12345678,d7


mulu    ($12345678).l,d7
mulu.w  ($12345678).l,d7

mulu    ($1234).w,d7
mulu.w  ($1234).w,d7

mulu    (a7),d6
mulu.w  (a7),d6

mulu    (a7)+,d6
mulu.w  (a7)+,d6

mulu    -(a7),d6
mulu.w  -(a7),d6

mulu    $12(a7,d6.l),d5
mulu    ($12,a7,d6.l),d5
mulu.w  $12(a7,d6.l),d5
mulu.w  ($12,a7,d6.l),d5

mulu    $12(a7,d6.w),d5
mulu    ($12,a7,d6.w),d5
mulu.w  $12(a7,d6.w),d5
mulu.w  ($12,a7,d6.w),d5

mulu    $12(a7,d6),d5
mulu    ($12,a7,d6),d5
mulu.w  $12(a7,d6),d5
mulu.w  ($12,a7,d6),d5

mulu    $1234(a7),d6
mulu    ($1234,a7),d6
mulu.w  $1234(a7),d6
mulu.w  ($1234,a7),d6


mulu    MULUPC(pc,d7.l),d6
mulu    (MULUPC,pc,d7.l),d6
mulu.w  MULUPC(pc,d7.l),d6
mulu.w  (MULUPC,pc,d7.l),d6

mulu    MULUPC(pc,d7.w),d6
mulu    (MULUPC,pc,d7.w),d6
mulu.w  MULUPC(pc,d7.w),d6
mulu.w  (MULUPC,pc,d7.w),d6

MULUPC:
mulu    MULUPC(pc,d7),d6
mulu    (MULUPC,pc,d7),d6
mulu.w  MULUPC(pc,d7),d6
mulu.w  (MULUPC,pc,d7),d6

mulu    $1234(pc),d7
mulu    ($1234,pc),d7
mulu.w  $1234(pc),d7
mulu.w  ($1234,pc),d7

mulu    d7,d6
mulu.w  d7,d6


mulu    #$FEDC,d7
mulu.w  #$FEDC,d7

mulu    $1234.w,d7
mulu.w  $1234.w,d7

mulu    $12345678.l,d7
mulu.w  $12345678.l,d7

mulu    $12345678,d7
mulu.w  $12345678,d7