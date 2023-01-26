Algoritmo sin_titulo
	//Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
	//decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
	//de los siguientes valores: 2+4+6+8+10.
	Definir i, n como entero
	Definir suma Como Entero
	suma = 0

	Escribir 'Ingrese la cantidad de n'
	Leer n
	Para i <- 1 hasta n*2 Hacer
		Si (i mod 2) = 0 Entonces
			suma = suma + i
		FinSi
	FinPara
	Escribir 'La suma total de numeros pares da: ' suma
FinAlgoritmo
