arch snes.cpu
output "test.bin", 1

nop
nop
nop
nop

bcc 0 //   ; %0110 %0100 +2a
bcc 1
bcc 2

nop
nop
nop
nop
