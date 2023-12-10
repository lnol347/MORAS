// 0 na 0
@R0
D=M
@R1
D=D+M
@END
D;JEQ


// 0 na x
@R0
D = M
@END
D;JEQ

// x na 0
@R2
M = 1
@R1
D = M
@pow
D;JGT
@END
0;JMP

// potenciranje
(pow)
@R1
D = M
@i
M = D

$WHILE(i)
    @R0
    D = M
    @j
    M = D
    @temp
    M = 0
    $WHILE(j)
        $SUM(temp,R2,temp)
        @j
        M = M - 1
    $END
    $MV(temp,R2)
    @i
    M = M - 1
$END


(END)
@END
0;JMP
