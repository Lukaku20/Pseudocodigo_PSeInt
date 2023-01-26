//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.
Algoritmo sumandoMatrices
	Definir matrix Como Entero
	Definir fila, columna, i, j Como Entero
	Escribir ' ingresa el tamaño de la matriz, primero las filas luego las columnas'
	Leer fila, columna
	Dimension matrix(fila,columna)
	azaro(matrix, fila, columna)
	Para i<-0 hasta fila-1
		para j<-0 hasta columna-1
			Escribir ' [' matrix(i,j) '] ' sin saltar
		FinPara
		Escribir ' '
	FinPara
	Escribir 'La Suma de los elementos da:  ' sumareo(matrix, fila, columna)
FinAlgoritmo

Subproceso azaro(matrix por referencia, fila Por Referencia, columna Por Referencia)
	definir i, j como entero
	Para i<-0 hasta fila -1
		para j<-0 hasta columna -1	
			matrix(i, j) = azar(30)
		FinPara
	FinPara
FinSubProceso
Funcion suma<- sumareo(matrix por referencia, fila Por Referencia, columna Por Referencia)
	Definir suma como entero
	definir i, j como entero
	suma<-0
	Para i<-0 hasta fila -1
		para j<-0 hasta columna -1	
			suma= suma + matrix(i, j)
		FinPara
	FinPara
FinFuncion

