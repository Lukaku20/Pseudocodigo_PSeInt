
//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
//m�s grande del vector.



Algoritmo Buscar_valor_mayor_vectores
	
	
	definir n, i Como Entero
	definir vec, num, mayor Como Real
	
	Escribir "Indique el tama�o deseado del vector"
	leer n
	Dimension vec[n]
	
	Escribir "Su vector contendr� " ,n " elementos"
	
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



