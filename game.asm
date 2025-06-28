// make cursor
@SCREEN 
M=-1

// save location of the cursor
D=A
@R1
M=D

(START) // loop

// save current key
@KBD	
D=M
// check if key is right
@132
D=A-D
@RIGHT
// if right jump to right
D;JEQ

// save key
@KBD	
D=M
// check if key is left
@130
D=A-D
@LEFT
// if right jump to right
D;JEQ


// loop
@START
0;JMP

/*_______________________functions____________________________*/

/*____________move right_____________*/
(RIGHT)
// get the current location of the cursor
@R1
A=M
// remove the cursor
M=0
// move the cursor right
D=A+1
@R1
M=D
A=M
M=-1
@START
0;JMP

/*____________move left_______________*/
(LEFT)
// get the current location of the cursor
@R1
A=M
// remove the cursor
M=0
// move the cursor right
D=A-1
@R1
M=D
A=M
M=-1
@START
0;JMP
