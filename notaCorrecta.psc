Algoritmo notaCorrecta
	//Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la
	//nota se pedir� de nuevo hasta que la nota sea correcta.
	
	Definir nota Como Entero
	Escribir 'Ingresa una nota que sea valida'
	leer nota
	Mientras nota < 0 o nota > 10 Hacer
		Escribir 'Esa nota es incorrecta, ingresa nota nuevamente'
		leer nota
	FinMientras
	Escribir 'Esa nota si es v�lida'
	
	
FinAlgoritmo
