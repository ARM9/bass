architecture n64.cpu
endian msb

main:
    j main

architecture snes.cpu
endian lsb
    db 0x42
    dw 0x1234
architecture n64.cpu
endian msb
    dh 0xFFFF
    dl 0x123456
    dd 0xFFEEDDCCBBAA9988
    dw 0xCAFEBABE
