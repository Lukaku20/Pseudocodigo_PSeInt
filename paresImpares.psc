Algoritmo paresImpares
	//Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
	//ingresará diez números.
	//Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
	//decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
	//de los siguientes valores: 2+4+6+8+10.
	
	Definir contador, numo como entero
	Definir pares, impares, suma, n como entero
	contador = 0
	pares = 0
	suma = 0
	impares = 0
	n = 0
	Escribir 'Ingresa el valor de n, que es la cantidad de numeros pares que vas a sumar'
	Leer n
	Hacer
		Escribir 'Ingresa un numero par o impar'
		Leer numo
		contador = contador + 1
		n = n - 1
		Si (numo mod 2) = 0 Entonces
			pares = pares + 1
			si n > 0 Entonces
				suma = suma + numo
			FinSi
			
		SiNo
			impares = impares + 1
		FinSi
	Mientras Que contador < 10
	Escribir 'El total de numeros pares ingresados fue : ', pares ' y de numeros impares fue : ', impares
	Escribir 'La suma de los primeros numeros pares dio : ', suma
	Escribir 'Eso fue todo'
FinAlgoritmo
