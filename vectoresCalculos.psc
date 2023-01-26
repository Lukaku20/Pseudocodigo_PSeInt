//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.
Algoritmo vectoresCalculos
	
	Definir Vector, i , suma, resta, multiplicacion como entero
	Dimension Vector(10)
	suma=0
	resta=0
	multiplicacion=1
	Para i<-0 hasta 9 Hacer
		Leer Vector(i)
	FinPara
	
	Para i<-0 hasta 9 Hacer
		suma = suma + vector(i)
	FinPara
	escribir 'La suma de todas los elementos del arreglo da: ' suma
	
	Para i<-9 hasta 0 Hacer
		resta = resta - vector(i)
	FinPara
	escribir 'La resta de todas los elementos del arreglo da: ' resta
	
	Para i<-0 hasta 9 Hacer
		multiplicacion = multiplicacion * vector[i]
	FinPara
	eSCRIBIR 'La multiplicacion de todas los elementos del arreglo da: ' multiplicacion
FinAlgoritmo
