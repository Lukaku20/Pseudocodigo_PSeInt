
//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el valor
//más grande del vector.

Algoritmo arregloMasGrande
	Definir vector, n, i Como Entero
	Escribir 'Ingresa el tamaño del vector'//Primero, definis entre quienes se va a dividir.
	Leer n 
	Dimension vector(n)
	Para i<-0 hasta n-1 Hacer
		Escribir 'Ingresa el valor que quieres guardar en cada espacio del vector'
		Escribir 'Ingresa el valor para espacio: ' i//Es el turno de cargar cuanto se gastó cada uno.
		leer vector(i)		
	FinPara
	Escribir 'Completaste el relleno de valores en cada espacio del vector'
	escribir  masGrande(vector, n) ' fue el valor mas grande ingresado.'//ES el que más se ha gastado en el Asado.""
	escribir suma(vector, n) ' es la suma de todas las variables. '//ES la suma total del Asado.""
	escribir dividiendo(vector, n) ' cada vez que divides la suma total por la cantidad de elementos [' n '] que participaron.'//ES lo que tienen que poner cada uno..""
	Escribir ' ¡¡Hecho!! ¿ha salido bien? Haha... '
FinAlgoritmo
Funcion return<-masGrande(vector por referencia, n)
	Definir return, i Como Entero
	return = 0
	para i<-0 hasta n-1 Hacer		
		Si vector(i) > return Entonces
			return = vector(i)
		FinSi
	FinPara
FinFuncion
Funcion return <- suma ( vector por referencia, n )
	definir return, i Como entero
	return = 0
		Para i<-0 hasta n-1 Hacer
			return = return + vector(i)
		FinPara
		
	Fin Funcion
	
Funcion return <- dividiendo ( vector por referencia, n )
	Definir return, divididos Como Real
	Definir sumar, i como entero
	sumar = 0
		Para i<-0 hasta n-1 Hacer
			sumar = sumar + vector(i)
		FinPara
		divididos = sumar/n
		return = divididos
		
		
Fin Funcion

	

