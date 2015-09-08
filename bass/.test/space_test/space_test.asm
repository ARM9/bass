
    arch     snes.cpu
    include     "include.inc"
    db   "    a    s    c    i    i    "   ,   "    \d    \d    \d     "

// commented out ops that don't work
lda    $00
lda   $0000,x
//lda     $0000,    y
lda         $0000  ,x
//lda         $0000  ,  y
mvn                             5=6
mvn                             5 =6
mvn                             5  =6
mvn                             5  =  6
mvn                             5 =   6
mvn                             5=    6
jsr   (4,x)
jsr   (4    ,x)
jsr   (    4,x)
jsr   (  4  ,x)
//jsr   (  4,x  )
//jsr   (  4,  x  )
//jsr   (  4  ,  x  )
//jsr   (  4  ,x  )
    arch      snes.gsu
or   #5
or   #   5
to   r5
//move   r5,r6
move   r5,  r6
move   r5  ,  r6
//move   r5  ,r6
//sms   (4),r4
sms   (4),  r4
//sms   (4)  ,r4
sms   (  4  ),  r4
//sms   (  4  )  ,  r4
//sms   (  4  )  ,r4
    arch   n64.cpu
lui 1,1
lui     1,1
lui     1,   1
lui     1   ,1
lui     1   ,   1
lb      1   ,1(  1  )
lb      1   ,1  (  1  )
lb      1,  1   (  1  )
lb      1   ,   1   (   1   )
addi    1,1,1
addi    1   ,   1,  1
addi    1,  1,  1
addi    1   ,1  ,1
// see what happens when file ends with spaces:
                  