code_008000:   stw (r4)         ; 34
code_008001:   to r2            ; 12
code_008002:   stop             ; 00
code_008003:   stop             ; 00
code_008004:   stop             ; 00
code_008005:   stop             ; 00
code_008006:   stop             ; 00
code_008007:   stop             ; 00
code_008008:   stop             ; 00
code_008009:   stop             ; 00
code_00800a:   sub r12          ; 6c
code_00800b:   sub r4           ; 64
code_00800c:   sub r1           ; 61
code_00800d:   bge code_007f8f  ; 06 80
code_00800f:   stop             ; 00
code_008010:   iwt r5, #$8006   ; f5 06 80
code_008013:   stop             ; 00
code_008014:   nop              ; 01
code_008015:   cache            ; 02
code_008016:   lsr              ; 03
code_008017:   rol              ; 04
code_008018:   bra code_008018  ; 05 fe
code_00801a:   bge code_008018  ; 06 fc
code_00801c:   blt code_008018  ; 07 fa
code_00801e:   bne code_008018  ; 08 f8
code_008020:   beq code_008018  ; 09 f6
code_008022:   bpl code_008018  ; 0a f4
code_008024:   bmi code_008018  ; 0b f2
code_008026:   bcc code_008018  ; 0c f0
code_008028:   bcs code_008018  ; 0d ee
code_00802a:   bvc code_008018  ; 0e ec
code_00802c:   bvs code_008018  ; 0f ea
code_00802e:   to r0            ; 10
code_00802f:   with r1          ; 21
code_008030:   stw (r2)         ; 32
code_008031:   loop             ; 3c
code_008032:   alt1             ; 3d
code_008033:   alt2             ; 3e
code_008034:   alt3             ; 3f
code_008035:   ldw (r3)         ; 43
code_008036:   plot             ; 4c
code_008037:   swap             ; 4d
code_008038:   color            ; 4e
code_008039:   not              ; 4f
code_00803a:   add r4           ; 54
code_00803b:   sub r5           ; 65
code_00803c:   merge            ; 70
code_00803d:   and r6           ; 76
code_00803e:   mult r7          ; 87
code_00803f:   sbk              ; 90
code_008040:   link #3          ; 93
code_008041:   sex              ; 95
code_008042:   asr              ; 96
code_008043:   ror              ; 97
code_008044:   jmp r8           ; 98
code_008045:   lob              ; 9e
code_008046:   fmult            ; 9f
code_008047:   ibt r9, #$2a     ; a9 2a
code_008049:   from r10         ; ba
code_00804a:   hib              ; c0
code_00804b:   or r11           ; cb
code_00804c:   inc r12          ; dc
code_00804d:   getc             ; df
code_00804e:   dec r13          ; ed
code_00804f:   getb             ; ef
code_008050:   iwt r14, #$1092  ; fe 92 10
code_008053:   stb (r0)         ; 3d 30
code_008055:   ldb (r0)         ; 3d 40
code_008057:   rpix             ; 3d 4c
code_008059:   cmode            ; 3d 4e
code_00805b:   adc r15          ; 3d 5f
code_00805d:   sbc r0           ; 3d 60
code_00805f:   bic r1           ; 3d 71
code_008061:   umult r2         ; 3d 82
code_008063:   div2             ; 3d 96
code_008065:   ljmp r8          ; 3d 98
code_008067:   lmult            ; 3d 9f
code_008069:   lms r0, ($0142)  ; 3d a0 a1
code_00806c:   lm r5, ($1092)   ; 3d f5 92 10
code_008070:   xor r4           ; 3d c4
code_008072:   getbh            ; 3d ef
code_008074:   add #$5          ; 3e 55
code_008076:   sub #$6          ; 3e 66
code_008078:   and #$7          ; 3e 77
code_00807a:   mult #$f         ; 3e 8f
code_00807c:   sms ($002a), r6  ; 3e a6 15
code_00807f:   or #$c           ; 3e cc
code_008081:   ramb             ; 3e df
code_008083:   getbl            ; 3e ef
code_008085:   sm ($1092), r7   ; 3e f7 92 10
code_008089:   adc #$5          ; 3f 55
code_00808b:   cmp r8           ; 3f 68
code_00808d:   bic #$7          ; 3f 77
code_00808f:   umult #$8        ; 3f 88
code_008091:   xor #$c          ; 3f cc
code_008093:   romb             ; 3f df
code_008095:   getbs            ; 3f ef
code_008097:   move r9, r10     ; 2a 19
code_008099:   moves r11, r12   ; 2b bc
code_00809b:   iwt r13, #$1092  ; fd 92 10
code_00809e:   cmp r10          ; 3f 6a
code_0080a0:   cmp r15          ; 3f 6f
code_0080a2:   cmp r15          ; 3f 6f
code_0080a4:   cmp r15          ; 3f 6f
code_0080a6:   cmp r9           ; 3f 69
code_0080a8:   cmp r15          ; 3f 6f
code_0080aa:   stop             ; 00
code_0080ab:   cache            ; 02
code_0080ac:   nop              ; 01
code_0080ad:   bra code_0080ab  ; 05 fc
code_0080af:   nop              ; 01
code_0080b0:   moves r9, r15    ; 29 bf
code_0080b2:   to r10           ; 1a
code_0080b3:   to r1            ; 11
code_0080b4:   to r15           ; 1f
code_0080b5:   to r10           ; 1a
code_0080b6:   add r5           ; 55
code_0080b7:   add #$f          ; 3e 5f
code_0080b9:   adc r0           ; 3d 50
code_0080bb:   adc #$f          ; 3f 5f
code_0080bd:   merge            ; 70
code_0080be:   and r15          ; 7f
code_0080bf:   mult r0          ; 80
code_0080c0:   mult r15         ; 8f
code_0080c1:   sbk              ; 90
code_0080c2:   link #1          ; 91
code_0080c3:   link #4          ; 94
code_0080c4:   fmult            ; 9f
code_0080c5:   sbk              ; 90
code_0080c6:   link #1          ; 91
code_0080c7:   lms r0, ($0000)  ; 3d a0 00
code_0080ca:   sms ($0000), r0  ; 3e a0 00
code_0080cd:   lms r1, ($0002)  ; 3d a1 01
code_0080d0:   sms ($0002), r1  ; 3e a1 01
code_0080d3:   lms r15, ($0042) ; 3d af 21
code_0080d6:   sms ($0042), r15 ; 3e af 21
code_0080d9:   lms r13, ($0000) ; 3d ad 00
code_0080dc:   sms ($0000), r13 ; 3e ad 00
code_0080df:   lms r8, ($0100)  ; 3d a8 80
code_0080e2:   sms ($0100), r8  ; 3e a8 80
code_0080e5:   lms r5, ($0110)  ; 3d a5 88
code_0080e8:   sms ($0110), r5  ; 3e a5 88
code_0080eb:   lms r10, ($0102) ; 3d aa 81
code_0080ee:   sms ($0102), r10 ; 3e aa 81
code_0080f1:   inc r0           ; d0
code_0080f2:   and r1           ; 71
code_0080f3:   and r3           ; 73
code_0080f4:   link #4          ; 94
code_0080f5:   stop             ; 00
code_0080f6:   stop             ; 00
code_0080f7:   stop             ; 00
code_0080f8:   stop             ; 00
code_0080f9:   stop             ; 00
code_0080fa:   stop             ; 00
