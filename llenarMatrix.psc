//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.
Algoritmo llenarMatrix
	Definir matrix Como Entero
	Definir fila, columna como entero
	Dimension matrix(3, 3)
	
	Para fila<-0 hasta 2
		para columna<-0 hasta 2
			escribir " ingrese casillero " " ", fila," ",columna
			 matrix(fila,columna) = azar(100)
		FinPara
	FinPara
	Para fila<-0 hasta 2
		para columna<-0 hasta 2
			escribir '[' matrix(fila,columna) ']' sin saltar
		FinPara
		escribir '  '
	FinPara
	
	
	
FinAlgoritmo
