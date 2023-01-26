//Realizar un programa que rellene de números aleatorios una matriz a través de un 
//subprograma y generar otro subprograma que muestre por pantalla la matriz final
Algoritmo Extras1matrices
	Definir matriz , num Como Entero
	Leer num
	Dimension matriz[num, num]
	rellenarMatriz(matriz, num)
	imprimirMatriz(matriz, num)
	
FinAlgoritmo

subproceso rellenarMatriz(matriz , num )
	Definir i, j Como Entero
	para i<-0 hasta num - 1 Hacer
		para j <- 0 hasta num - 1
			matriz(i, j) = aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso
subproceso imprimirMatriz(matriz , num )
	Definir i, j Como Entero
	para i<-0 hasta num - 1 Hacer
		para j <- 0 hasta num - 1
			escribir '[' matriz(i,j) ']' sin saltar
		FinPara
		escribir ' ' 
	FinPara
FinSubProceso
