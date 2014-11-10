
dw $1234
ply:
    fill 4
lda:
    fill 4

    db "lda"; dl lda

define foo(5)
define bar(66)

    iwt r5, #lda

    //jal 1234
    //ret
    //push R0
    //pop r15
    stop
    nop
    cache
    lsr
    rol
    
label:
    bra label
    bge label
    blt label
    bne label
    beq label
    bpl label
    bmi label
    bcc label
    bcs label
    bvc label
    bvs label
    
    to r0
    with r1
    stw (r2)
    loop
    alt1
    alt2
    alt3
    
    ldw (r3)
    plot
    swap
    color
    not
    add r4
    sub r5
    merge
    and r6
    
    mult r7
    sbk
    link #3
    sex
    asr
    ror
    jmp r8
    lob
    fmult
    ibt r9, #0042
    from r10
    
    hib
    or r11
    inc r12
    getc
    dec r13
    getb
    iwt r14, #004242
    
    stb (r0)
    ldb (r0)
    rpix
    cmode
    adc r15
    sbc r0
    bic r1
    
    umult r2
    div2
    ljmp r8
    lmult
    lms r0, (0x942) // truncated to 0x142
    lm r5, (4242)
    xor r4
    getbh
    
    add #5
    sub #$6
    and #0x7
    mult #0x0f
    sms (42), r6
    or #12
    ramb
    getbl
    sm (4242), r7
    
    adc #5
    cmp r8
    bic #7
    umult #8
    xor #12
    romb
    getbs

    move r9, r10
    moves r11, r12
    lea r13, 4242

    cmp r010
    cmp r0015
    cmp r$f
    cmp r$f
    cmp r%1001
    cmp r0xf
    stop
    //move r14, #42
    //move r15, #<-42
    //move r0, #4242
    
    // removed
    //move r1,(42)
    //move r2,(69)
    //move r3,(512)
    //move (42),r4
    //move (69),r5
    //move (512),r6
    
    //moveb R0, (R8)
    //moveb r8, (R9)
    //moveb (R10), r0
    //moveb (R11), r12
    
    //movew r0, (r11)
    //movew r14, (r11)
    //movew (r1), r0
    //movew (r2), r3

// vim:ft=bass
