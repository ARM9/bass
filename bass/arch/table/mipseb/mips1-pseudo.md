
// Pseudo instructions that would collide with other revisions
// Eg move is addu on mips1&2 but daddu on mips3, so don't include this on a mips3
R"(
move *05,*01 ; %000000 %00 %000 >>04b >>03b >>02b >>01b ~b ~a %000 %00100001

)"

// todo make l.d and s.d use two lwc1/swc1 instructions
//l.d *05,*08(*01) ; %110101 >>04c >>03c >>02c >>01c ~c ~a >>08b ~b
//s.d *05,*08(*01) ; %111101 >>04c >>03c >>02c >>01c ~c ~a >>08b ~b

// vim:ft=mips
