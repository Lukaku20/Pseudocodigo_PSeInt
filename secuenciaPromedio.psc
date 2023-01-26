Algoritmo secuenciaPromedio
	//Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de
	//los números ingresados. Suponemos que el usuario no insertará número negativos.
	
	Definir numPro, VarNeg, aux Como Real
	VarNeg = -1
	Escribir 'Ingrese un numero inicial (entero y positivo)'
	leer numPro
	Hacer
		Escribir 'Ingresa una secuencia de numeros que se promedian, y finaliza con un -1'
		leer aux
		numPro= (numPro + aux) / 2
		Mientras que aux <> VarNeg
	
	Escribir 'El promedio es ', numPro  
FinAlgoritmo
