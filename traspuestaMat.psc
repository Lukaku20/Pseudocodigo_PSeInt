//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla 
//con números aleatorios entre 1 y 100 y mostrar su traspuesta. 
//¿Qué es una Matriz Traspuesta?
//La matriz traspuesta de una matriz A se denota por B y se obtiene cambiando sus filas por 
//columnas (o viceversa)
Algoritmo traspuestaMat
	Definir matriz, fila, columna, i, j, matrizB Como Entero
	Escribir ' ingrese el tamaño para las filas'; leer fila
	Escribir ' ingrese el tamaño para las columnas'; leer columna
	Dimension matriz(fila,columna)
	dimension matrizB(columna,fila)
	rellenarMatriz(matriz, fila, columna)
	escribir 'La matriz original : '
	para i<-0 hasta fila-1 Hacer
		para j<-0 hasta columna-1 Hacer
			escribir '[' matriz(i,j) ']' sin saltar//= matriz(i, j)
		FinPara
		escribir ' '
	FinPara
	para i<-0 hasta fila-1 Hacer
		para j<-0 hasta columna-1 Hacer
			 matrizB(j,i) = matriz(i, j)
		FinPara
		
	FinPara
	escribir ' '
	escribir 'La matriz traspuesta : '
	para i<-0 hasta columna-1 Hacer
		para j<-0 hasta fila-1 Hacer
			escribir '[' matrizB(i, j) ']' sin saltar//= matriz(i, j)
		FinPara
		escribir ' '
	FinPara
	
	
FinAlgoritmo

subproceso rellenarMatriz(matriz , fila, columna )
	Definir i, j Como Entero
	para i<-0 hasta fila - 1 Hacer
		para j <- 0 hasta columna - 1
			matriz(i, j) = aleatorio(1,100)
		FinPara
	FinPara
FinSubProceso