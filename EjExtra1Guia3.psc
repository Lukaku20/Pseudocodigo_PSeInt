//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.
Algoritmo EjExtra1Guia3
	Definir n , suma Como Entero
	Escribir "Ingrese el numero " ; Leer n
	Escribir"La suma de los divisores es " sumaDivisor(n)
FinAlgoritmo
Funcion suma <- sumaDivisor (n)
	Definir i , suma Como Entero
	i = 0 ; suma = 0
	Para  i <- 1 hasta n Con Paso 1 Hacer
		Si n % i = 0 y i <> n Entonces
			Escribir suma + i
			suma = suma + i
		FinSi
	FinPara
		FinFuncion
	