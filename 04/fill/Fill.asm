// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(INICIO)
@SCREEN
D=A
@i //A = 16
M=D

(CICLO)
@i 
D=M
@24575 //24576 es el teclado
D=A-D
@INICIO
D;JLT

@KBD //Leer el teclado
D=M

@NEGRO //verfica que una tecla esté presionada
D;JNE //if (teclado != 0)

@i //limpiar la pantalla (blanca)
D=M
A=D
M=0

@CONTINUAR
0;JMP

(NEGRO)

@i 
D=M
A=D
M=-1 //poner negro el pixel

(CONTINUAR)
@i 
M=M+1 //paso al siguiente pixel
@CICLO
0;JMP