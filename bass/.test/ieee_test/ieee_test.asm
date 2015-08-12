
macro align(size) {
  while (pc() % {size}) {
    db 0xff
  }
}

constant foo(1)
define bar(1.3)

    endian msb
ieee64 1.0 ,  1.1   ,  0.3
ieee64 1.0,1.1,0.3
ieee32 1.0,   1.1f,0.3
    align(16)
ieee32 1.0f  ,1.1d
ieee64 12345,1f
ieee32 12345
ieee32 100000000000.0,    0, 12345,-10.0f
    align(16)
ieee32 -1., -15.0, 1.2, 10.0
ieee64 10000000,-1.f, 1.
    endian lsb
    align(16)
db "endian lsb:"
    align(16)
ieee64 1, -1
ieee32 1, 1., -1, -1.0
ieee64 10000000,-1.f, {bar}
ieee32 2
    endian msb
    align(16)
db "endian msb:"
    align(16)
ieee32 1.0b1, 1p99, 4bark_at_the"moon" alright really whät, foo, {bar} // weird
ieee64 {bar}

// vim:ft=mips
