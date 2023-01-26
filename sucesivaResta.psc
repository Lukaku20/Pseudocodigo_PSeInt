//Realizar un procedimiento que permita realizar la división entre dos números y muestre el
//cociente y el resto utilizando el método de restas sucesivas.
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

Subproceso cocienteYResto(a, b)
	Definir resultado, cont como entero
	resultado = 0
	cont = 0
	escribir 'Se hara la division con resta sucesiva entre '  a ' / ' b ' :'
	hacer 
		resultado = a - b
		escribir a ' - ' b ' = ' resultado
		cont = cont + 1
		escribir ConvertirATexto(cont) ' resta realizada' 
		a = resultado
	Mientras Que a >= b
	Escribir ' dado que ' a ' es menor que ' b ' : el residuo es ' a ' y el cociente es ' cont
FinSubProceso

Algoritmo sucesivaResta
	Definir num1, num2 Como Entero
	Escribir 'Ingresa los numeros enteros que deseas dividir con restas sucesivas'
	Leer num1, num2
    cocienteYResto(num1, num2)
	
FinAlgoritmo
