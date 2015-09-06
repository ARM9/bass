arch n64.cpu

macro align(size) {
  while (pc() % {size}) {
    db 0
  }
}

endian msb
instrument "beqtest *01,*05,*18 ; %000100 >>04a >>03a >>02a >>01a ~a ~b +4>>02c"
//instrument "j *01 ; %000010 >>27a >>26a >>25a >>24a >>23a >>22a >>21a >>20a >>19a >>18a >>17a >>16a >>15a >>14a >>13a >>12a >>11a >>10a >>09a >>08a >>07a >>06a >>05a >>04a >>03a >>02a"

_start:
    beq 2, 2,_end
    nop
    fill $1ffe4, 0
    beq  0,31,       _start
    nop
    beq 2, 2, _start
    nop
    beq 2, 2, _start
    align(4)
_end:
    //fill (1<<20)
    origin 0x120000
    align(4)
fo:
    j _start            // works
    nop
    j _end+$2000000-1   // works
    nop
    j _end+$4000000-1   // msb should be $09 is $08
    nop
    j fo-1              // works

// vim:ft=mips
