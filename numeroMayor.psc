Algoritmo numeroMayor
	//Escribir una estructura PARA que le solicite al usuario varios números y al finalizar muestre el
	//mayor número ingresado.
	
	Definir num1, num2, i Como Entero
	Escribir 'Ingresa numeros enteros y devuelve el numero mayor'
	num2 = 0
	Para i = 1 Hasta 3 Con Paso 1 Hacer
		leer num1 
		Si num1 > num2 Entonces
			num2 = num1 
		FinSi
	Fin Para
	escribir 'El numero mayor fue ', num2
	
FinAlgoritmo
