Algoritmo numeroLimite
	//Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
	//solicite números al usuario hasta que la suma de los números introducidos supere el
	//límite inicial.
	
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
