
// lorom seek macro
macro seek(variable offset) {
    origin ((offset & $7f0000) >> 1) | (offset & $7fff)
    base offset
}

architecture snes.gsu
    
origin 0x7fff
db $ff

    define pc = r15
    define sp = r10

    seek($8000)
    include "test.asm"

_GsuReset:
    cache
    nop
    bra _GsuReset
    nop
    with r09
    from {pc}
    to {sp}
    to r1
    to r15
    to r%1010
    add r5
    add #$1f
    adc r0
    adc #%01111

    and r0 // 0x70 = merge
    and r15

    mult r0
    mult r015

    link #0 // 0x90 = sbk
    link #1
    link #4
    link #15 // 0x97 = ror
    link #16 // 0x90 = sbk
    link #17 // 0x91 = link #1

    lms r0, (1)
    sms (1), r0
    lms r1, (2)
    sms (2), r1
    lms r15, ($42)
    sms ($42), r15
    lms r13, ($200)
    sms ($200), r13
    lms r8, ($100)
    sms ($100), r8
    lms r5, ($511)
    sms ($511), r5
    lms r10, (258)
    sms (258), r10

    add r128
    and r%1000000001
    and r$33
    link #255+$15
// vim:ft=snes
