Algoritmo numeroLimite
	//Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n
	//solicite n�meros al usuario hasta que la suma de los n�meros introducidos supere el
	//l�mite inicial.
	
	Definir limite, eleccion, aux Como Entero
	
	limite = 1000
	aux = 0
	Mientras aux < limite Hacer
		Escribir ' ingrese un numero '
		leer eleccion
		aux = eleccion + aux
		Escribir ' sigue'
	FinMientras
	escribir 'El numero ', limite ' fue superado por ' aux
FinAlgoritmo
