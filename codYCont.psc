Algoritmo codYCont
	//Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero 
	//mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no 
	//le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a 
	//4567. El programa finaliza cuando ingresa los datos correctos
	Definir codigo, contrasena Como Entero
	Hacer
		Escribir 'Introduce tu n�mero de c�digo'
		Leer codigo
	Mientras Que codigo <> 1024
	Hacer
		Escribir 'introduce tu contrase�a'
		Leer contrasena
	Mientras Que contrasena <> 4567
	Escribir 'ingresaste los datos correctos'
FinAlgoritmo
