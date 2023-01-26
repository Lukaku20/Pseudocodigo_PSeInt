Algoritmo algoritmo_texto
	
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

subProceso inicializarMatriz(tablero ,filas, columnas)
	
	Definir  i,j como entero
	
	para i <- 0 Hasta  filas - 1 Hacer
		para j <- 0 Hasta columnas - 1 Hacer
			 tablero[i,j] = "*"
		FinPara
	FinPara
	
FinSubProceso


subProceso agregarPalabra(tablero ,palabra, posicionJ)
	Definir  j como entero
	Para  j <- 0 Hasta 11 Hacer
		tablero[posicionJ,j] = Subcadena(palabra,j,j) 
	FinPara
FinSubProceso


subProceso acomodarPalabras(tablero)
	Definir  cambio, palabra Como Caracter
	Definir  posicionesR, i,j, diferencia Como Entero
	Dimension  posicionesR[9]
	
	Dimension  palabra[9]
	
	para i <- 0 Hasta  8
		palabra[i] = separarPalabra(tablero, i)
	FinPara
	
	para i <- 0 hasta 8
		posicionesR[i] = buscarR(palabra[i])
	FinPara
	
	para i <- 0 hasta 8  Hacer
		diferencia = 5 - posicionesR[i]
		Escribir diferencia
		
		para j <- 0 hasta 11 Hacer
			si j >= diferencia Entonces
				tablero[i,j] = Subcadena(palabra[i],j-diferencia,j-diferencia)
			SiNo
			    tablero[i,j] = " "
			FinSi
			
		FinPara
	FinPara
	
	
	
FinSubProceso




Funcion  palabra <- separarPalabra(matriz,posicionI)
	
	Definir  palabra Como Caracter
	Definir j Como Entero
	
	palabra = ""
	Dimension  vector(12)
	

	para j <- 0 hasta 11 Hacer
		palabra = Concatenar(palabra,matriz[posicionI,j]) 	
	FinPara
  
FinFuncion


funcion posicionR <- buscarR(palabra)
	Definir  posicionR, contador Como Entero
	Definir  hayR Como Logico
	
	hayR = Falso
	contador = 0
	Hacer
		si Subcadena(palabra,contador,contador) = "r"
			posicionR = contador
			hayR = Verdadero
		FinSi
		contador = contador + 1
	Mientras Que hayR = Falso 
	
FinFuncion


subProceso imprimirMatriz(tablero,filas, columnas)
	Definir  i,j como entero

	para i <- 0 Hasta  filas - 1 Hacer
		para j <- 0 Hasta columnas - 1 Hacer
			Escribir Sin Saltar " " tablero[i,j]
		FinPara
		Escribir " "
	FinPara
FinSubProceso

