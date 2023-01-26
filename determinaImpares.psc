Funcion return <- paresEImpares ( a )
	definir i, n, p Como Entero
	definir unidad, retorno Como Real
	i = 0
	n = 0
	unidad = 0
	retorno = a
	p = 0
	Mientras a > 0.9 Hacer
		retorno = trunc(a/10)
		unidad = a - (retorno*10)
		n = n + 1
		a = retorno
		Si unidad mod 2 = 0 Entonces
			escribir unidad ' es un numero par'
			p = p + 1
		SiNo
			escribir unidad ' es un numero impar'
			i = i + 1
		FinSi
		
	FinMientras
	Si i = n Entonces
		Escribir 'Todas las cifras son impares'
	SiNo
		si p = n Entonces
			escribir 'Todas las cifras son pares'
		SiNo
			si i = n entonces 
				escribir 'El número tiene la misma cantidad de cifras pares e impares'
			sino
				si i > p Entonces
					escribir 'el numero tiene mas cifras impares'
				sino 
					si p > i Entonces
						escribir ' el numero tiene mas cifras pares'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
Fin Funcion

//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//		numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//		Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//				realizar el ejercicio.


Algoritmo determinaImpares
	Definir num como entero	
	Escribir 'Ingrese un numero para determinar si cada una de sus cifras es par o impar'
	leer num	
	escribir paresEImpares(num)
	
FinAlgoritmo
