Algoritmo algoritmoPalabrasivo

	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
	
FinAlgoritmo

//Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de
//columnas.
//En primera instancia inicializaremos la matriz con un "*" (asterisco) en cada lugar para que
//	la misma no esté vacía y no tengamos problemas.

Subproceso inicializarMatriz(tablero, filas, columnas)
	Definir i, j Como Entero
	para i<-0 hasta filas-1 Hacer
		para j<-0 hasta columnas-1 Hacer
			tablero(i,j)= '*'
		FinPara
	FinPara
	
FinSubProceso

Subproceso agregarPalabra(tablero, palabra, orden)
	definir j Como Entero
	para j<-0 hasta 11 Hacer
		tablero(orden,j)= subcadena(palabra,j,j)
	FinPara
FinSubProceso

Funcion palabra <- separarPalabras(tablero,posicionI)
	Definir j Como Entero
	Definir palabra Como cadena
	palabra=''
	para j<-0 hasta 11 Hacer
		palabra = concatenar(palabra, tablero(posicionI,j))
	FinPara
	
FinSubProceso
Funcion posicionR<-buscarR(palabra)
	definir posicionR, contador Como Entero
	definir hayR Como Logico
	contador=0
	hayR=Falso
	Hacer
		si subcadena(palabra,contador,contador) = 'r'
			hayR=Verdadero
			posicionR=contador
		FinSi
		contador=contador+1
	Mientras Que hayR=falso
FinFuncion

Subproceso acomodarPalabras(tablero)
	Definir i, j, posicionR, diferencia Como Entero
	Definir palabra Como Caracter
	Dimension palabra(9)
	Dimension posicionR(9)
	Para i<-0 hasta 8 Hacer
		palabra(i) = separarPalabras(tablero,i)
	FinPara
	para i<-0 hasta 8 Hacer
		posicionR(i) = buscarR(palabra(i))
	FinPara
//	para i<-0 hasta 8 Hacer
//		palabra(i) = palabrita
//		para j<-0 hasta 11 Hacer
//			tablero(i,j) = subcadena(palabra((i),j,j)
//		FinPara
	//	FinPara
	
	para i<-0 hasta 8 Hacer
		diferencia = 5 - posicionR(i)
		Para j<-0 hasta 11 Hacer
			Si diferencia<=j entonces
				tablero(i,j) = subcadena(palabra(i),j-diferencia,j-diferencia)
			SiNo
				tablero(i,j) = ' ' 
			FinSi
			
		FinPara
	FinPara

FinSubProceso

Subproceso imprimirMatriz(tablero, filas, columnas)
	Definir i, j Como Entero
	para i <- 0 Hasta  filas - 1 Hacer
		para j <- 0 Hasta columnas - 1 Hacer
			Escribir Sin Saltar " " tablero[i,j]
		FinPara
		Escribir " "
	FinPara
FinSubProceso
	