Funcion resto <- capicua (num)
	definir primerNum, ultNum, i, x, num2 Como entero
	definir resto Como Caracter
	primerNum = 10
	ultNum = 10
	i = 0
	num2 = num
	Mientras num > 9 Hacer
		Mientras num2 > 9 Hacer
			primerNum = trunc(num2/10)
			i = i + 1
			num2 = primerNum
		FinMientras
		primerNum = num2
		Escribir 'El primer numero es : ' primerNum
		num2 = num
		ultNum = num2 % 10
		Escribir 'El ultimo numero es : ' ultNum
		Si ultNum = primerNum Entonces
			x = 10 ^(i-1) * primerNum
			num2 = trunc(num/10) - x
			num = num2
			i = 0
			resto = 'El numero es C A P I C Ú A' 
		SiNo
			resto = 'El numero no es capicua'
			num = 0 
		FinSi
	FinMientras
	
	
FinFuncion


//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//transformar el numero a cadena para realizar el ejercicio.

Algoritmo aLosCapicua2
	Definir num como real
	
	Escribir 'Ingrese un numero para saber si es o no es C A P I C Ú A (3 dígitos como mínimo)'
	Leer num
	escribir capicua(num)
	
FinAlgoritmo