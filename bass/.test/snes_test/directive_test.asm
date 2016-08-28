arch snes.cpu

constant x($80)
lda x // af 80 00 00
lda #x // a9 80 00

define y($0080)
lda {y} // ad 80 00
lda.b {y} // a5 80
lda.w {y} // ad 80 00

lda #{y} // a9 80 00
lda.b #{y} // a9 80
lda.w #{y} // a9 80 00

define z($0870)
lda {z} // ad 70 08
lda #{z} // a9 70 08
