arch snes.cpu

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

FOO()
BAR(0)
BAR(3)
BAR(1)

scope park {
...bark:
beq park....bark
scope .lar.ba.: {
lda #...bark
.par.:
}
}

_start:
    beq _end
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
    bra _start
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
