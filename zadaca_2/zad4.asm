@2348
D = A
@i
M = D

@0
D = A
@j
M = D

// prva dijagonala
(LOOP_START4)
    // dok nije i >= 128
    @j
    D = M;
    @4096
    D = D - A;
    @LOOP_END4
    D; JGE

    @1
    D = A
    @k
    M = D

    (LOOP_START5)
        // dok nije i >= 128
        @i
        D = M;
        @2836
        D = D - A;
        @j
        D = D - M;
        @LOOP_END5
        D; JGE

        // RAM[SCREEN + i] = -1
        @i
        D = M;
        @SCREEN
        D = A + D;
        @n
        M = D;
        @k
        D = M;
        @n
        A = M;
        M = D;

        @k
        D = M;
        M = M + D;

        @32
        D = A;
        @i
        M = M + D;

        @LOOP_START5
        0; JMP
    (LOOP_END5)

    @1
    D = A;
    @i
    M = M + D;
    
    @512
    D = A;
    @j
    M = M + D;

    @LOOP_START4
    0; JMP
(LOOP_END4)

@6410
D = A
@i
M = D

@4609
D = A
@j
M = D

// druga dijagonala
(LOOP_START6)
    // dok nije i >= 128
    @j
    D = -M;
    @LOOP_END6
    D; JGE

    @1
    D = A
    @k
    M = D

    (LOOP_START7)
        // dok nije i >= 128
        @i
        D = M;
        @2324
        D = A - D;
        @j
        D = D + M;
        @LOOP_END7
        D; JGE

        // RAM[SCREEN + i] = -1
        @i
        D = M;
        @SCREEN
        D = A + D;
        @n
        M = D;
        @k
        D = M;
        @n
        A = M;
        M = M + D;

        @k
        D = M;
        M = M + D;

        @32
        D = A;
        @i
        M = M - D;

        @LOOP_START7
        0; JMP
    (LOOP_END7)

    @1
    D = A
    @k
    M = -D

    @1
    D = A;
    @i
    M = M + D;
    
    @512
    D = A;
    @j
    M = M - D;

    @LOOP_START6
    0; JMP
(LOOP_END6)

@2348
D = A
@i
M = D

// gornji vodoravni pravac
(LOOP_START0)
    // dok nije i >= 128
    @i
    D = M;
    @2356
    D = D - A;
    @LOOP_END0
    D; JGE

    // RAM[SCREEN + i] = -1
    @i
    D = M;
    @SCREEN
    A = A + D;
    M = -1;

    @1
    D = A;
    @i
    M = M + D;

    @LOOP_START0
    0; JMP
(LOOP_END0)

@31
D = A
@i
M = M + D;

// desni vertikalni pravac
(LOOP_START1)
    // dok nije i >= 128
    @i
    D = M;
    @6418
    D = D - A;
    @LOOP_END1
    D; JGE

    // RAM[SCREEN + i] = -32768
    @i
    D = M;
    @SCREEN
    D = A + D;
    @j
    M = D;
    @32767
    D = A;
    D = D + 1;
    D = -D;
    @j
    A = M
    M = M + D

    @32
    D = A;
    @i
    M = M + D;

    @LOOP_START1
    0; JMP
(LOOP_END1)

// donji vodoravni pravac
(LOOP_START2)
    // dok nije i >= 128
    @i
    D = M;
    @6411
    D = A - D;
    @LOOP_END2
    D; JGE

    // RAM[SCREEN + i] = -1
    @i
    D = M;
    @SCREEN
    A = A + D;
    M = -1;

    @1
    D = A;
    @i
    M = M - D;

    @LOOP_START2
    0; JMP
(LOOP_END2)

@31
D = A
@i
M = M - D;

// lijevi vertikalni pravac
(LOOP_START3)
    // dok nije i >= 128
    @i
    D = M;
    @2348
    D = A - D;
    @LOOP_END3
    D; JGE

    // RAM[SCREEN + i] = -1
    @i
    D = M;
    @SCREEN
    A = A + D;
    M = M + 1;

    @32
    D = A;
    @i
    M = M - D;

    @LOOP_START3
    0; JMP
(LOOP_END3)

(END)
@END
0; JMP
