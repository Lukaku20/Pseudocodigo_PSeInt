Algoritmo contrasena
//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar 
//una clave. S�lo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deber� 
//mostrar un mensaje indic�ndonos que hemos agotado esos 3 intentos. Si acertamos la 
//clave se deber� mostrar un mensaje que indique que se ha ingresado al sistema 
//correctamente. 	

	Definir clave Como Caracter
	definir intentos Como Entero
	
	intentos = 3
	
	hacer 
		Escribir 'Ingresa la clave correctamente'
		Leer clave
		intentos = intentos - 1
	Mientras Que clave <> 'eureka' y intentos > 0
	Si	clave= 'eureka' entonces 
		Escribir ' Has ingresado correctamente al sistema'
	sino 
		escribir ' Has agotado los 3 intentos' 
	FinSi
	FinAlgoritmo
