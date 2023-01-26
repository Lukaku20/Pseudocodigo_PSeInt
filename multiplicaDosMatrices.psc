//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. 
//Inicialice las matrices para evitar el ingreso de datos por teclado. 
Algoritmo multiplicaDosMatrices
	
	definir matriz1, matriz2, i, j Como Entero
	Dimension matriz1(3,3)
	Dimension matriz2(3,3)
	
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matriz1(i,j) = aleatorio(1,9)
			matriz2(i,j) = aleatorio(1,9)
		FinPara
	FinPara
	
	multiplicacion(matriz1,matriz2)
	
FinAlgoritmo
subproceso multiplicacion(matriz1, matriz2)
	Definir matriz3, i, j Como Entero
	Dimension matriz3(3,3)
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			matriz3(i,j) = matriz1(i,j)*matriz2(i,j)
		FinPara
	FinPara
	para i<-0 hasta 2 Hacer
		para j <- 0 hasta 2 hacer
			escribir '[' matriz3(i,j) ']' sin saltar
		FinPara
		escribir ' ' 
	FinPara
FinFuncion
