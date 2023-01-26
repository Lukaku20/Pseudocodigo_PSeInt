Algoritmo capicua
	Definir num, numAux, newNum, residuo como entero
	Escribir 'Ingresa un numero para determinar si es C A P I C Ú A '
	Leer num

	numAux = num
	newNum = 0
	residuo = 0
	Mientras numAux > 0 Hacer
		residuo = numAux % 10
		newNum = newNum*10 + residuo
		numAux = trunc(numAux/10)
	FinMientras
	si num = newNum Entonces
		Escribir 'El numero es C A P I C Ú A '
	SiNo
		escribir ' no es capicua'
	FinSi
FinAlgoritmo



