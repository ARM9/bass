    arch snes.cx4
    output "cx4_test.sfc",create
//db "cx4"
cx4_start:
    nop
    stop

    unknown0

    jmp $7f
    jmp prg_page:70
    jmpeq prg_page:$80
    jmpeq $80
    jmpge prg_page:$ff
    jmpge $FF
    jmpmi prg_page:$ff
    jmpmi $7f

    unknown1

    finish ext_dta

    unknown2

    skiplt
    skipge
    skipne
    skipeq
    skippl
    skipmi

    //call
    unknown3

    ret

    inc ext_ptr

    unknown4

    cmpr a,a
// vim:ft=snes
