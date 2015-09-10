
// some possible improvements:
// delimiter followed by token
// ' +' -> ' ' then '(,|\(|\[) ' -> '\1' then ' (\)|\]) ' -> '\1'
// Not universal fix, might need additional characters
// fixes:
//  lda 0,x; lda 0, x
//  jsr (0,x); jsr ( 0 , x )
//  sm (0),r2; sm ( 0 ) , r2
//  lm r2,(0); sm r2 , ( 0 )
//  stb (r2); stb ( r2 )
//  iwt r2,#0; iwt r2, #0
//  vmulf v2,v2,v2[e2]; vmulf v2 , v2 , v2 [ e2 ]
//  lbv v2[e2],0(2); lbv v2 [ e2 ] , 0 ( 2 )
// breaks snes.gsu, just redefine f.ex sm (*), r* to sm (*),r*
// breaks bass statements like if macro, should also be an easy fix
// this assumes people don't write arches like mov )*(,]*[
    arch     snes.cpu
    include     "include.inc"
    db   "    a    s    c    i    i    "   ,   "    \d    \d    \d     "

constant     foo(  $42   )

macro  bar    baz   (   x   )   {
    constant   bar{x}(  {x}  )
}

print   bar2   ,    bar3  ,  "   s   p  a   c   e  \n  "
bar baz (2) // uh oh, space is a valid character in macro names
bar   baz   (   3  )
// comment out ops that don't work
lda   bar2
lda    $00
lda   $0000,x
lda   bar3  ,y
lda  foo   ,x
//lda     $0000,    y
lda         $0000  ,x
//lda         $0000  ,  y
mvn                             5=6
mvn                             5 =6
mvn                             5  =6
mvn                             5  =  6
mvn                             5 =   6
mvn                             5=    6
jsr   (foo,x)
jsr   (4    ,x)
jsr   (    4,x)
jsr   (  4  ,x)
//jsr   (  4,x  )
//jsr   (  4,  x  )
//jsr   (  4  ,  x  )
//jsr   (  4  ,x  )

    arch      snes.gsu
or   #foo
or   #   5
to   r5
//move   r5,r6
move   r5,  r6
move   r5  ,  r6
//move   r5  ,r6
//sms   (4),r4
sms   (foo),  r4
//sms   (4)  ,r4
sms   (  foo  ),  r4
//sms   (  4  )  ,  r4
//sms   (  4  )  ,r4
stw (r4)
stw  (r4  )
//stw  (  r4  )
//iwt r15,#$4242
iwt r15, #$4242
iwt r15, #   $4242
//iwt r15,#foo
iwt r15, #bar2
iwt r15, #   foo
iwt     r15    ,    #    $FEED
iwt     r   15   ,   #   $FEED
iwt     r   15,   #   $FEED
//iwt     r   15  ,#   $FEED

    arch   n64.cpu
lui 1,1
lui     1,foo
lui     foo,   1
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

 arch            n64.rsp
    vmulf   v1,v15,v31[e0]   ;      vsut   v31,v0,v4[e15]
    //vmulf   v1,v15,v31[   e0]
    //vmulf   v1, v15, v31 [e0]
    //vmulf   v1,  v15,  v31[   e0]
    vmulf   v1 ,v15 ,v31 [e0 ]   
    vmulf   v1   ,v15    ,v31     [e0   ]     
    //vacf    v2  ,  v13  ,  v23  [  e5  ]
    lbv v2[e2],0(2)
    lbv v2  [e2  ],  0  (  2  )
    //lbv  v2  [  e2  ]  ,  0  (  2  )

// test end with spaces
                  
