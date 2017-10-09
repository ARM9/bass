architecture r800

mulub a,b
muluw hl,bc
mulub a,c
mulub a,d
mulub a,e
mulub a,h
mulub a,l
mulub a,a
muluw hl,sp

ex af,af'
DJNZ:
djnz DJNZ
ld ($FFFF),hl
ld hl,($FFFF)
ld hl,$FFFF
ld ($FFFF),a
ld a,($FFFF)
ld a,$FF
exx
JPPO:
jp po,JPPO
JPPE:
jp pe,JPPE
JPP:
jp p,JPP
JPM:
jp m,JPM

ex (sp),hl
ex de,hl
ex (sp),ix
ex (sp),iy

im 0
im 1
im 2

in b,(c)
neg
ld i,a
in c,(c)
ld r,a
in d,(c)
in e,(c)
in h,(c)
in l,(c)
rld
in f,(c)
in a,(c)
ld sp,($FFFF)
in a,($FF)

ldi
cpi
ini
ldd
cpd
ind
ldir
cpir
inir
lddr
cpdr
indr

inc ix
inc ixh
dec ixh

ld ix,($FFFF)
ld ix,$FFFF
dec ix
inc ixl
dec ixl

inc (ix+$FF)
dec (ix+$FF)

add ix,bc
add ix,de
add ix,ix
add ix,sp

ld b,ixh
ld b,ixl
ld b,(ix+$FF)

ld c,ixh
ld c,ixl
ld c,(ix+$FF)

ld d,ixh
ld d,ixl
ld d,(ix+$FF)

ld e,ixh
ld e,ixl
ld e,(ix+$FF)

ld l,(ix+$FF)

ld ixh,b
ld ixh,c
ld ixh,d
ld ixh,e
ld ixh,ixh
ld ixh,ixl
ld h,(ix+$FF)
ld ixh,a
ld ixl,b
ld ixl,c
ld ixl,d
ld ixl,e
ld ixl,ixh
ld ixl,ixl
ld ixl,a

ld ixh,$FF
ld ixl,$FF

ld (ix+$FF),b
ld (ix+$FF),c
ld (ix+$FF),d
ld (ix+$FF),e
ld (ix+$FF),h
ld (ix+$FF),l
ld (ix+$FF),a

ld a,ixh
ld a,ixl
ld a,(ix+$FF)

ld (ix+$FF),$EE

add a,ixh
add a,ixl
add a,(ix+$FF)

adc a,ixh
adc a,ixl
adc a,(ix+$FF)

sub ixh
sub ixl
sub (ix+$FF)

sbc a,ixh
sbc a,ixl
sbc a,(ix+$FF)

and ixh
and ixl
and (ix+$FF)

xor ixh
xor ixl
xor (ix+$FF)

or ixh
or ixl
or (ix+$FF)

cp ixh
cp ixl
cp (ix+$FF)

rlc (ix+$FF)
rl (ix+$FF)
rrc (ix+$FF)
rr (ix+$FF)
sla (ix+$FF)
sra (ix+$FF)
srl (ix+$FF)

bit 0,(ix+$FF)
bit 1,(ix+$FF)
bit 2,(ix+$FF)
bit 3,(ix+$FF)
bit 4,(ix+$FF)
bit 5,(ix+$FF)
bit 6,(ix+$FF)
bit 7,(ix+$FF)

res 0,(ix+$FF)
res 1,(ix+$FF)
res 2,(ix+$FF)
res 3,(ix+$FF)
res 4,(ix+$FF)
res 5,(ix+$FF)
res 6,(ix+$FF)
res 7,(ix+$FF)

set 0,(ix+$FF)
set 1,(ix+$FF)
set 2,(ix+$FF)
set 3,(ix+$FF)
set 4,(ix+$FF)
set 5,(ix+$FF)
set 6,(ix+$FF)
set 7,(ix+$FF)

pop ix
push ix

jp (ix)

ld sp,ix

ret po
CALLPO:
call po,CALLPO
ret pe
CALLPE:
call pe,CALLPE

sbc hl,bc
retn
adc hl,bc
ld bc,($FFFF)
reti
sbc hl,de
ld a,i
adc hl,de
ld de,($FFFF)
ld a,r
sbc hl,hl
rrd
adc hl,hl
sbc hl,sp
adc hl,sp

out (c),b
out (c),c
out (c),d
out (c),e
out (c),h
out (c),l
out (c),a

out ($FF),a

outi
outd
otir
otdr

ret p
CALLP:
call p,CALLP
ret m
CALLM:
call m,CALLM

inc iy
inc iyh
dec iyh

ld iy,($FFFF)
ld iy,$FFFF
dec iy
inc iyl
dec iyl
inc (iy+$FF)
dec (iy+$FF)

add iy,bc
add iy,de
add iy,iy
add iy,sp

ld b,iyh
ld b,iyl
ld b,(iy+$FF)

ld c,iyh
ld c,iyl
ld c,(iy+$FF)

ld d,iyh
ld d,iyl
ld d,(iy+$FF)

ld e,iyh
ld e,iyl
ld e,(iy+$FF)

ld l,(iy+$FF)

ld iyh,b
ld iyh,c
ld iyh,d
ld iyh,e
ld iyh,iyh
ld iyh,iyl
ld h,(iy+$FF)
ld iyh,a
ld iyl,b
ld iyl,c
ld iyl,d
ld iyl,e
ld iyl,iyh
ld iyl,iyl
ld iyl,a

ld iyh,$FF
ld iyl,$FF

ld (iy+$FF),b
ld (iy+$FF),c
ld (iy+$FF),d
ld (iy+$FF),e
ld (iy+$FF),h
ld (iy+$FF),l
ld (iy+$FF),a

ld a,iyh
ld a,iyl
ld a,(iy+$FF)

ld (iy+$FF),$EE

add a,iyh
add a,iyl
add a,(iy+$FF)

adc a,iyh
adc a,iyl
adc a,(iy+$FF)

sub iyh
sub iyl
sub (iy+$FF)

sbc a,iyh
sbc a,iyl
sbc a,(iy+$FF)

and iyh
and iyl
and (iy+$FF)

xor iyh
xor iyl
xor (iy+$FF)

or iyh
or iyl
or (iy+$FF)

cp iyh
cp iyl
cp (iy+$FF)

rlc (iy+$FF)
rl (iy+$FF)
rrc (iy+$FF)
rr (iy+$FF)
sla (iy+$FF)
sra (iy+$FF)
srl (iy+$FF)

bit 0,(iy+$FF)
bit 1,(iy+$FF)
bit 2,(iy+$FF)
bit 3,(iy+$FF)
bit 4,(iy+$FF)
bit 5,(iy+$FF)
bit 6,(iy+$FF)
bit 7,(iy+$FF)

res 0,(iy+$FF)
res 1,(iy+$FF)
res 2,(iy+$FF)
res 3,(iy+$FF)
res 4,(iy+$FF)
res 5,(iy+$FF)
res 6,(iy+$FF)
res 7,(iy+$FF)

set 0,(iy+$FF)
set 1,(iy+$FF)
set 2,(iy+$FF)
set 3,(iy+$FF)
set 4,(iy+$FF)
set 5,(iy+$FF)
set 6,(iy+$FF)
set 7,(iy+$FF)

pop iy
push iy

jp (iy)

ld sp,iy

ld ($FFFF),ix
ld ($FFFF),bc
ld ($FFFF),de
ld ($FFFF),sp
ld ($FFFF),iy

nop
ld bc,$FFFF
ld (bc),a
inc bc
inc b
dec b
ld b,$FF
rlca

add hl,bc
ld a,(bc)
dec bc
inc c
dec c
ld c,$FF
rrca

ld de,$FFFF
ld (de),a
inc de
inc d
dec d
ld d,$FF
rla
JR:
jr JR
add hl,de
ld a,(de)
dec de
inc e
dec e
ld e,$FF
rra
JRNZ:
jr nz,JRNZ

inc hl
inc h
dec h
ld h,$FF
daa
JRZ:
jr z,JRZ
add hl,hl

dec hl
inc l
dec l
ld l,$FF
cpl
JRNC:
jr nc,JRNC
ld sp,$FFFF

inc sp
inc (hl)
dec (hl)
ld (hl),$FF
scf
JRC:
jr c,JRC
add hl,sp

dec sp
inc a
dec a

ccf
ld b,b
ld b,c
ld b,d
ld b,e
ld b,h
ld b,l
ld b,(hl)
ld b,a
ld c,b
ld c,c
ld c,d
ld c,e
ld c,h
ld c,l
ld c,(hl)
ld c,a
ld d,b
ld d,c
ld d,d
ld d,e
ld d,h
ld d,l
ld d,(hl)
ld d,a
ld e,b
ld e,c
ld e,d
ld e,e
ld e,h
ld e,l
ld e,(hl)
ld e,a
ld h,b
ld h,c
ld h,d
ld h,e
ld h,h
ld h,l
ld h,(hl)
ld h,a
ld l,b
ld l,c
ld l,d
ld l,e
ld l,h
ld l,l
ld l,(hl)
ld l,a
ld (hl),b
ld (hl),c
ld (hl),d
ld (hl),e
ld (hl),h
ld (hl),l
halt
ld (hl),a
ld a,b
ld a,c
ld a,d
ld a,e
ld a,h
ld a,l
ld a,(hl)
ld a,a
add a,b
add a,c
add a,d
add a,e
add a,h
add a,l
add a,(hl)
add a,a
adc a,b
adc a,c
adc a,d
adc a,e
adc a,h
adc a,l
adc a,(hl)
adc a,a
sub b
sub c
sub d
sub e
sub h
sub l
sub (hl)
sub a
sbc a,b
sbc a,c
sbc a,d
sbc a,e
sbc a,h
sbc a,l
sbc a,(hl)
sbc a,a
and b
and c
and d
and e
and h
and l
and (hl)
and a
xor b
xor c
xor d
xor e
xor h
xor l
xor (hl)
xor a
or b
or c
or d
or e
or h
or l
or (hl)
or a
cp b
cp c
cp d
cp e
cp h
cp l
cp (hl)
cp a
ret nz
pop bc
JPNZ:
jp nz,JPNZ
JP:
jp JP
CALLNZ:
call nz,CALLNZ
push bc
add a,$FF
rst 00h
ret z
ret
JPZ:
jp z,JPZ
rlc b
rlc c
rlc d
rlc e
rlc h
rlc l
rlc (hl)
rlc a
rrc b
rrc c
rrc d
rrc e
rrc h
rrc l
rrc (hl)
rrc a
rl b
rl c
rl d
rl e
rl h
rl l
rl (hl)
rl a
rr b
rr c
rr d
rr e
rr h
rr l
rr (hl)
rr a
sla b
sla c
sla d
sla e
sla h
sla l
sla (hl)
sla a
sra b
sra c
sra d
sra e
sra h
sra l
sra (hl)
sra a

srl b
srl c
srl d
srl e
srl h
srl l
srl (hl)
srl a
bit 0,b
bit 0,c
bit 0,d
bit 0,e
bit 0,h
bit 0,l
bit 0,(hl)
bit 0,a
bit 1,b
bit 1,c
bit 1,d
bit 1,e
bit 1,h
bit 1,l
bit 1,(hl)
bit 1,a
bit 2,b
bit 2,c
bit 2,d
bit 2,e
bit 2,h
bit 2,l
bit 2,(hl)
bit 2,a
bit 3,b
bit 3,c
bit 3,d
bit 3,e
bit 3,h
bit 3,l
bit 3,(hl)
bit 3,a
bit 4,b
bit 4,c
bit 4,d
bit 4,e
bit 4,h
bit 4,l
bit 4,(hl)
bit 4,a
bit 5,b
bit 5,c
bit 5,d
bit 5,e
bit 5,h
bit 5,l
bit 5,(hl)
bit 5,a
bit 6,b
bit 6,c
bit 6,d
bit 6,e
bit 6,h
bit 6,l
bit 6,(hl)
bit 6,a
bit 7,b
bit 7,c
bit 7,d
bit 7,e
bit 7,h
bit 7,l
bit 7,(hl)
bit 7,a
res 0,b
res 0,c
res 0,d
res 0,e
res 0,h
res 0,l
res 0,(hl)
res 0,a
res 1,b
res 1,c
res 1,d
res 1,e
res 1,h
res 1,l
res 1,(hl)
res 1,a
res 2,b
res 2,c
res 2,d
res 2,e
res 2,h
res 2,l
res 2,(hl)
res 2,a
res 3,b
res 3,c
res 3,d
res 3,e
res 3,h
res 3,l
res 3,(hl)
res 3,a
res 4,b
res 4,c
res 4,d
res 4,e
res 4,h
res 4,l
res 4,(hl)
res 4,a
res 5,b
res 5,c
res 5,d
res 5,e
res 5,h
res 5,l
res 5,(hl)
res 5,a
res 6,b
res 6,c
res 6,d
res 6,e
res 6,h
res 6,l
res 6,(hl)
res 6,a
res 7,b
res 7,c
res 7,d
res 7,e
res 7,h
res 7,l
res 7,(hl)
res 7,a
set 0,b
set 0,c
set 0,d
set 0,e
set 0,h
set 0,l
set 0,(hl)
set 0,a
set 1,b
set 1,c
set 1,d
set 1,e
set 1,h
set 1,l
set 1,(hl)
set 1,a
set 2,b
set 2,c
set 2,d
set 2,e
set 2,h
set 2,l
set 2,(hl)
set 2,a
set 3,b
set 3,c
set 3,d
set 3,e
set 3,h
set 3,l
set 3,(hl)
set 3,a
set 4,b
set 4,c
set 4,d
set 4,e
set 4,h
set 4,l
set 4,(hl)
set 4,a
set 5,b
set 5,c
set 5,d
set 5,e
set 5,h
set 5,l
set 5,(hl)
set 5,a
set 6,b
set 6,c
set 6,d
set 6,e
set 6,h
set 6,l
set 6,(hl)
set 6,a
set 7,b
set 7,c
set 7,d
set 7,e
set 7,h
set 7,l
set 7,(hl)
set 7,a
CALLZ:
call z,CALLZ
CALL:
call CALL
adc a,$FF
rst 08h
ret nc
pop de
JPNC:
jp nc,JPNC
CALLNC:
call nc,CALLNC
push de
sub $FF
rst 10h
ret c

JPC:
jp c,JPC
CALLC:
call c,CALLC
sbc a,$FF
rst 18h

pop hl

push hl
and $FF
rst 20h

jp (hl)
jp hl

xor $FF
rst 28h

pop af

di
push af
or $FF
rst 30h

ld sp,hl

ei
cp $FF
rst 38h
