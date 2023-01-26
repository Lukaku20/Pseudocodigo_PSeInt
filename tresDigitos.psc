Algoritmo tresDigitos
	//Hacer un algoritmo que lea un número por el teclado y determine si tiene tres dígitos.
	
	definir num Como caracter
	definir num2 como entero
	escribir 'ìngrese un numero que contenga varios dígitos'
	leer num
	
	num2 = Longitud(num)
	Si (num2 = 3) Entonces
		Escribir 'el numero tiene 3 digitos'
	SiNo
		Escribir 'el numero NO tiene 3 digitos'
		
	Fin Si
FinAlgoritmo
