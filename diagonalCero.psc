//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//	subproceso para imprimir la matriz.

Algoritmo diagonalCero
	Definir matriz Como Entero
	definir i, j Como Entero
	Dimension matriz(5,5)
	
	Para i<-0 hasta 4 Hacer
		para j<-0 hasta 4 Hacer
			Si i = j Entonces
				matriz(i,j) = 0
			SiNo
				matriz(i,j) = azar(100)
			FinSi
		FinPara
	FinPara
	para i<-0 hasta 4 Hacer
		para j<- 0 hasta 4 Hacer
			Escribir sin saltar '[' matriz(i,j) ']'
		FinPara
		escribir ' ' 
	FinPara
FinAlgoritmo
