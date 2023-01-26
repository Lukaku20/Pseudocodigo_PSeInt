Algoritmo codYCont
	//Realizar un programa que solicite al usuario su código de usuario (un número entero 
	//mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no 
	//le debe permitir continuar hasta que introduzca como código 1024 y como contraseña 
	//4567. El programa finaliza cuando ingresa los datos correctos
	Definir codigo, contrasena Como Entero
	Hacer
		Escribir 'Introduce tu número de código'
		Leer codigo
	Mientras Que codigo <> 1024
	Hacer
		Escribir 'introduce tu contraseña'
		Leer contrasena
	Mientras Que contrasena <> 4567
	Escribir 'ingresaste los datos correctos'
FinAlgoritmo
