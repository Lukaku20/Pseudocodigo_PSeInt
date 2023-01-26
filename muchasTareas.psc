Algoritmo muchasTareas
	//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el 
	//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de 
	//todos ellos.
	Definir suma Como Real
	Definir i, numMax, numMin, ingreso como entero
	numMax = 0
	numMin = 1000000
	i = 0
	suma = 0 
	//Escribir 'Ingresa un numero entero, para finalizar el programa teclea 0'
	//Leer ingreso
	Hacer
		Escribir 'Ingresa un numero entero, para finalizar el programa teclea 0'
		Leer ingreso
		i = i + 1
		suma = suma + ingreso
		Si ingreso <> 0 entonces
			Si  ingreso > numMax entonces
				numMax = ingreso 
			FinSi
			si ingreso < numMin 
				numMin = ingreso  
			FinSi
		FinSi
		
	Mientras Que ingreso <> 0 
	Escribir 'El numero maximo fue ', numMax, ' numero minimo fue ' numMin , ' y promedio fue ' suma/i
	
FinAlgoritmo
