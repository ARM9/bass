arch n64.rsp
output "branch.n64", create

// N64 MIPS 4000 CPU Registers
constant r0(0)
constant r1(1)
constant r2(2)
constant r3(3)
constant r4(4)
constant r5(5)
constant r6(6)
constant r7(7)
constant r8(8)
constant r9(9)
constant r10(10)
constant r11(11)
constant r12(12)
constant r13(13)
constant r14(14)
constant r15(15)
constant r16(16)
constant r17(17)
constant r18(18)
constant r19(19)
constant r20(20)
constant r21(21)
constant r22(22)
constant r23(23)
constant r24(24)
constant r25(25)
constant r26(26)
constant r27(27)
constant r28(28)
constant r29(29)
constant r30(30)
constant r31(31)

endian msb
instrument "beqtest *01,*05,*18 ; %000100 >>04a >>03a >>02a >>01a ~a ~b +4>>02c"

_start:
    beq r2, r2,_end
    nop
    fill $1ffe4, 0
    beq  r0,r31,       _start
    nop
    beq r2, r2, _start
    nop
    beq r2, r2, _start
_end:
    nop
// vim:ft=bass
