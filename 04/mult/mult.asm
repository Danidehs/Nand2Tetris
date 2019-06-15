// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@i 			// i = 1 (contador)
M=1
@R2 		// R2 = 0
M=0

(CICLO)
	@i 			
	D=M
	@R0
	D=D-M
	@FIN
	D;JGT		// si (i - R0 > 0) ir a FIN

	@i 			// i++
	M=M+1

	@R1 		// R2 += R1
	D=M
	@R2
	M=M+D

	@CICLO 		// ir a CICLO
	0;JMP	

(FIN)
	@FIN
	0;JMP