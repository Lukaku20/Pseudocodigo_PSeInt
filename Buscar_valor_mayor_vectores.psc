
//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el valor
//más grande del vector.



Algoritmo Buscar_valor_mayor_vectores
	
	
	definir n, i Como Entero
	definir vec, num, mayor Como Real
	
	Escribir "Indique el tamaño deseado del vector"
	leer n
	Dimension vec[n]
	
	Escribir "Su vector contendrá " ,n " elementos"
	
	para i=0 hasta n-1 Hacer
		
		Escribir "Digite el numero a ingresar"
		leer num
		vec[i]=num
		escribir "se ha almacenado " ,num " en el subindice ",i " del vector."
	FinPara
	
	mayor=numMayor(vec, n)
	Escribir "El numero mayor del vector es ",mayor
	
FinAlgoritmo


Funcion mayor<- numMayor(vec, n)
	
	Definir mayor, comp Como real
	definir j como entero
	
	
	comp=0
	mayor=vec[0]
	
	para j=0 hasta n-1 Hacer
		
		comp=vec[j]
		
		si comp>mayor
			
			mayor=comp
			
		FinSi
		
	FinPara

FinFuncion



