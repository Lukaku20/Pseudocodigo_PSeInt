Funcion retorno <- login ( a, z )
	Definir retorno como logica
	Si a = 'usuario1' y z = 'asdasd' Entonces
		retorno = verdadero
	SiNo
		retorno = falso
	FinSi
	
Fin Funcion

//Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
//		Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos
//			solo 3 intentos, si nos quedamos sin intentos la función devolverá Falso.

Algoritmo loguearse
	Definir usuario, contrasena Como Caracter
	Definir i como entero
	definir retorno como logica
	retorno = falso
	i = 3
	Mientras i > 0 y retorno = falso hacer
		Escribir 'Ingrese un nombre de usuario'
		Leer usuario
		escribir ' ingrese contrasenia'
		leer contrasena
		i = i - 1
		retorno = login(usuario, contrasena)
	FinMientras
	escribir retorno

FinAlgoritmo
