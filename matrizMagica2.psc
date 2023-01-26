//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//		sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//		introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//		matriz que no debe superar orden igual a 10.
Algoritmo matrizMagica2
	Definir matrix, i, j Como Entero
	Definir suma, suma2, suma3, sumaDi, sumaDiInv Como Entero
	Definir comprobarC, comprobarF, comprobarD, comprobacion como logica
	Dimension matrix(3,3)
	//comprobacion(matrix,3,3)
	//llenar matriz
	Para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir 'Posicion ' i ' ' j 
			leer matrix(i,j) 
			
		FinPara
	FinPara
	Para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			escribir '[' matrix(i,j) ']' Sin Saltar
			
		FinPara
		escribir ' ' 
	FinPara
	suma = 0
	suma2 = 0
	suma3 = 0
	para i<-0 hasta 2 Hacer
		suma = suma + matrix(i,0)
	FinPara
	para i<-0 hasta 2 Hacer
		suma2 = suma2 + matrix(i,1)
	FinPara
	para i<-0 hasta 2 Hacer
		suma3 = suma3 + matrix(i,2)
	FinPara
	
	Escribir ' La suma de las columnas 1 es : ' suma
	Escribir ' La suma de las columnas 2 es : ' suma2
	Escribir ' La suma de las columnas 3 es : ' suma3
	
	Si suma = suma2 y suma3 = suma Entonces
		comprobarC = verdadero
	SiNo
		comprobarC = falso
	FinSi
	suma = 0
	suma2 = 0
	suma3 = 0
	para j<-0 hasta 2 Hacer
		suma = suma + matrix(0,j)
	FinPara
	para j<-0 hasta 2 Hacer
		suma2 = suma2 + matrix(1,j)
	FinPara
	para j<-0 hasta 2 Hacer
		suma3 = suma3 + matrix(2,j)
	FinPara
	Escribir ' La suma de las filas 1 es : ' suma
	Escribir ' La suma de las filas 2 es : ' suma2
	Escribir ' La suma de las filas 3 es : ' suma3
	Si suma = suma2 y suma3 = suma Entonces
		comprobarF = verdadero
	SiNo
		comprobarF = falso
	FinSi
	sumaDi = 0
	sumaDiInv = 0
	Escribir 'hasta ahora son ' comprobarC, ' y ' comprobarF
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 hacer
		Si i = j Entonces
			sumaDi = sumaDi + matrix(i,j)
		FinSi
		FinPara
	FinPara
	
	para i<-2 hasta 0 Hacer
		para j<-0 hasta 2 hacer
			Si i = 0 y j = 2 Entonces
				sumaDiInv = sumaDiInv + matrix(i,j)
			FinSi
			Si i = 1 y j = 1 Entonces
				sumaDiInv = sumaDiInv + matrix(i,j)
			FinSi
			Si i = 2 y j = 0 Entonces
				sumaDiInv = sumaDiInv + matrix(i,j)
			FinSi
		FinPara
	FinPara
	
	Si sumaDi = sumaDiInv entonces 
		comprobarD = Verdadero
	SiNo
		comprobarD = Falso
	FinSi
	
	escribir 'finalmente hemos sumado las diagonales: ' sumaDi ' y ' sumaDiInv
	escribir ' han resultado ' comprobarD
	comprobacion = comprobarC y comprobarD y comprobarF
	escribir ' Si la matriz es mágica, es : ' comprobacion

FinAlgoritmo


	