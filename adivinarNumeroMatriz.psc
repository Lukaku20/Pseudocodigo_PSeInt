//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
Algoritmo adivinarNumeroMatriz
	
	Definir matrix, num Como Entero
	Definir fila, columna como entero
	Dimension matrix(5, 5)
	
	Para fila<-0 hasta 4
		para columna<-0 hasta 4		
			matrix(fila,columna) = azar(50)
		FinPara
	FinPara
	
//	Para fila<-0 hasta 4
//		para columna<-0 hasta 4		
//			Escribir ' ' matrix(fila,columna) ' ' sin saltar
//		FinPara 
//		escribir ' ' 
//	FinPara
	
	Escribir '¿Cuál es el número que quieres encontrar en la Matriz?'
	Leer num
	Para fila<-0 hasta 4
		para columna<-0 hasta 4	
			Si num = matrix(fila,columna) Entonces
				Escribir ' [' matrix(fila,columna) '] ' sin saltar
			Sino
			Escribir ' ' matrix(fila,columna) ' ' sin saltar
			FinSi
		FinPara
		Escribir ' '
	FinPara
	Para fila<-0 hasta 4
		para columna<-0 hasta 4	
			Si num = matrix(fila,columna) Entonces
				Escribir ' [' matrix(fila,columna) '] ' sin saltar
				Escribir 'El numero se encontraba en la posicion ( ' fila ', ' columna ' ) '
			FinSi
		FinPara
		Escribir ' '
	FinPara
	
	
FinAlgoritmo
