arch n64.rsp
output "sym_test.n64", create

// N64 MIPS 4000 CPU Registers
constant r0(0)
constant r1(1)
constant r2(2)
constant r3(3)
constant r4(4)
constant r5(5)
constant r6(6)
constant r7(7)

macro align(size) {
  while (pc() % {size}) {
    db 0
  }
}

macro FOO() {
{#}:
    nop
}

macro scope BAR(a) {
    if {a} > 0 {
        db 1
        {#}:
    }
    db 0
}

endian msb

FOO()
BAR(0)
BAR(3)
BAR(1)

scope park {
...bark:
beq r0, r0, park....bark
scope .lar.ba.: {
lui r0, ...bark
.par.:
}
}

_start:
    beq r2, r2,_end
_not: {
    scope _the {
        scope _end: {
            scope orr: {
                scope is {
                    it: {
                    scope question {
                        mark:
                        +
                    }
                    +
                    }
                    -
                }
            }
        }
    }
}
scope _end: {
    nop
    j _start
}
scope foo: {
    scope bar: {
        scope baz {
            nop
        }
    }
}
scope bar: {
    inner:
}
inner:
scope baz {
    inner: {
    }
}
// vim:ft=snes
