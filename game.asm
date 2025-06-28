
@SCREEN
M=-1
(START)
@KBD
D=M
// if key is right move to the right
@132
D=A-D
@RIGHT
D;JEQ


// MOVE RIGHT
(RIGHT)
@SCREEN
D=A
M=0
A=D+1
M=-1



//
@START
0;JMP
(END)
@END
0;JMP
