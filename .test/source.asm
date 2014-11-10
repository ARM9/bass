macro seek(variable offset) {
  origin ((offset & $7f0000) >> 1) | (offset & $7fff)
  base offset
}

seek(0x8000)

scope main: {
  loop: {
    -; beq +; dex; lsr; bra -; +
    rts
  }
}

jmp main.loop

macro scope factorial(variable n) {
  variable r(1)
  while n >= 1 {
    r = r * n
    n = n - 1
  }
  global variable result(r)
}

factorial(10)
print factorial.result, "\n"

macro text(value) {
  print {value}
}

macro hex(variable value) {
  if value > 15 {
    hex(value >> 4)
  }
  value = value & 15
  putchar(value < 10 ? '0' + value : 'a' + value - 10)
}

text("Program counter is at: 0x"); hex(pc()); text("\n")

if {defined message} {
  print "{message}\n"
}
