architecture n64.cpu

macro align(size) {
  while (pc() % {size}) {
    db 0
  }
}

base 0xf0000000

_start:
    beq 2, 2,_end
    nop
    fill $1ffe4, 0
    beq  0,31,       _start
    nop
    beq 2, 2, _start
    nop
    beq 2, 2, _start
_end:
    //fill (1<<20)
    origin 0x120000
fo:
    j fo
    j fo-1
    j _end+$2000000-1
    j _end+$4000000-1
    j $FFFFFFF          // -> 0xFFFFFFC
    j $FFFFFFFFFFFFFF   // shouldn't overflow anymore
    j $F
    //jt fo-1
    jal fo
    jal fo-1
    jal _end+$2000000-1
    jal _end+$4000000-1
    jal $FFFFFFF
    jal $FFFFFFFFFFFFFF
    jal $F

// vim:ft=mips
