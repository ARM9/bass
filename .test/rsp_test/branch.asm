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

constant at(1)
constant v0(2)
constant v1(3)
constant a0(4)
constant a1(5)
constant a2(6)
constant a3(7)
constant t0(8)
constant t1(9)
constant t2(10)
constant t3(11)
constant t4(12)
constant t5(13)
constant t6(14)
constant t7(15)
constant s0(16)
constant s1(17)
constant s2(18)
constant s3(19)
constant s4(20)
constant s5(21)
constant s6(22)
constant s7(23)
constant t8(24)
constant t9(25)
constant k0(26)
constant k1(27)
constant gp(28)
constant sp(29)
constant s8(30)
constant ra(31)

// RSP CP0 Control Registers (MTF0/MTC0):
constant c0(0)   // RSP CP0 Control Register 00: I/DMEM Address For DMA (RW) ($04040000)
constant c1(1)   // RSP CP0 Control Register 01:   DRAM Address For DMA (RW) ($04040004)
constant c2(2)   // RSP CP0 Control Register 02: DMA READ  Length (DRAM -> I/DMEM) (RW) ($04040008)
constant c3(3)   // RSP CP0 Control Register 03: DMA WRITE Length (DRAM <- I/DMEM) (RW) ($0404000C)
constant c4(4)   // RSP CP0 Control Register 04: RSP Status (RW) ($04040010)
constant c5(5)   // RSP CP0 Control Register 05: DMA Full (R) ($04040014)
constant c6(6)   // RSP CP0 Control Register 06: DMA Busy (R) ($04040018)
constant c7(7)   // RSP CP0 Control Register 07: CPU-RSP Semaphore (RW) ($0404001C)
constant c8(8)   // RSP CP0 Control Register 08: RDP Command Buffer START (RW) ($04100000)
constant c9(9)   // RSP CP0 Control Register 09: RDP Command Buffer END (RW) ($04100004)
constant c10(10) // RSP CP0 Control Register 10: RDP Command Buffer CURRENT (R) ($04100008)
constant c11(11) // RSP CP0 Control Register 11: RDP Status (RW) ($0410000C)
constant c12(12) // RSP CP0 Control Register 12: RDP Clock Counter (R) ($04100010)
constant c13(13) // RSP CP0 Control Register 13: RDP Command Buffer BUSY (R) ($04100014)
constant c14(14) // RSP CP0 Control Register 14: RDP Pipe BUSY (R) ($04100018)
constant c15(15) // RSP CP0 Control Register 15: RDP TMEM BUSY (R) ($0410001C)

// RSP CP2 Control Registers (CFC2/CTC2):
constant vco(0) // RSP CP2 Control Register 0: Vector Carry Out
constant vcc(1) // RSP CP2 Control Register 1: Vector Compare Code
constant vce(2) // RSP CP2 Control Register 2: Vector Compare Extension

//instrument "bra *01,*05,*18 ; %000100 >>04a >>03a >>02a >>01a ~a ~b +2>>04c +2>>03c +2>>02c +2>>01c ~c"
instrument "bra *01,*05,*18 ; %000100 >>04a >>03a >>02a >>01a ~a ~b +2>>02c"

// RSP MIPS 4000 CPU Scalar Instructions (CPU):
BEQ:
//sltu r1,ra,r1
nop

bra r1,r1,BEQ
//bra r1,r1,BEQ
// vim:ft=bass
