//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//		sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//		introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//		matriz que no debe superar orden igual a 10.
Algoritmo sin_titulo
	Definir matrix Como Entero
	Definir suma, suma2, suma3 Como Entero
	Definir comprobarC, comprobarF como logica
	Dimension matrix(3,3)
	//comprobacion(matrix,3,3)
	
	para i<-0 hasta 2 Hacer
		suma = suma + matrix(i,0)
	FinPara
	para i<-0 hasta 2 Hacer
		suma2 = suma + matrix(i,1)
	FinPara
	para i<-0 hasta 2 Hacer
		suma3 = suma + matrix(i,2)
	FinPara
	
	Si suma = suma2 y suma3 = suma Entonces
		comprobarC = verdadero
	SiNo
		comprobarF = falso
	FinSi
	
	para i<-0 hasta 2 Hacer
		suma = suma + matrix(0,i)
	FinPara
	para i<-0 hasta 2 Hacer
		suma2 = suma + matrix(1,i)
	FinPara
	para i<-0 hasta 2 Hacer
		suma3 = suma + matrix(2,i)
	FinPara
	
	Si suma = suma2 y suma3 = suma Entonces
		comprobarF = verdadero
	SiNo
		comprobarF = falso
	FinSi
	
	
FinAlgoritmo


	