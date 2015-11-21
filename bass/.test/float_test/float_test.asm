
macro align(size) {
  while (pc() % {size}) {
    db 0xff
  }
}

constant foo(1)
define bar(1.3)

    endian msb
float64 1.0 ,  1.1   ,  0.3
float64 1.0,1.1,0.3
float32 1.0,   1.1f,0.3
    align(16)
float32 1.0f  ,1.1d
float64 12345,1f
float32 12345
float32 100000000000.0,    0, 12345,-10.0f
    align(16)
float32 -1., -15.0, 1.2, 10.0
float64 10000000,-1.f, 1.
    endian lsb
    align(16)
db "endian lsb:"
    align(16)
float64 1, -1
float32 1, 1., -1, -1.0
float64 10000000000.0,-1.f, {bar}
float32 2
    endian msb
    align(16)
db "endian msb:"
    align(16)
float32 1.0b1, 1p99, 4bark_at_the"moon" alright really whät, foo, {bar}
float32 1.1e4, 1.3e-4
    align(16)
float64 {bar}, 1.e-310
float32 0x1234.1, 0X3.14p-2, 0x1p4, 0xfe3d  // if using strtof and strtod

// vim:ft=mips
