Algoritmo cantidadCifras
//Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin 
//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota: 
	//investigar la funci�n trunc().
	
	Definir num Como Real
	Definir num1 Como Entero
	
	Escribir 'Ingresa un numero entero'
	leer num
	num1=0
	Mientras num >= 0.9 hacer
		num = trunc(num / 10)
		escribir num
		num1 = num1 + 1
	FinMientras
	
	Escribir 'el numero tiene tantos digitos: ", num1	
	
FinAlgoritmo
