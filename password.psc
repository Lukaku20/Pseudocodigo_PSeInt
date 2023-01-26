Algoritmo password
//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar 
//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá 
//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la 
//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema 
//correctamente. 
	
	Definir clave Como Caracter
	Definir i, intentos Como Entero
	i = 1
	intentos = 3
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir ' Ingresa la clave correcta'
		Escribir ' Tienes ', intentos, ' intentos'
		Leer clave
		Si clave = 'eureka' Entonces
			Escribir 'Ingresaste correctamente al sistema'
			i = 3
		SiNo
			Escribir 'Error, esa no es la clave. Ingresa nuevamente'
			intentos = intentos - 1
			si intentos = 0 Entonces
				escribir 'Te has quedado sin intentos'
			FinSi
		FinSi
	Fin Para

	
FinAlgoritmo
