//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

Subproceso intercambioAB(a, b)
	Definir int Como Entero
	int = a
	a = b
	b = int
	escribir 'El valor del intercambio de A= ' a 
	escribir 'El valor del intercambio de B= ' b 
FinSubProceso

Algoritmo intercambio
	Definir a, b Como Entero
	Escribir 'Ingrese un entero A'
	leer a
	escribir ' Ingrese otro entero B'
	leer b
	intercambioAB(a, b)
	
	
	
FinAlgoritmo
