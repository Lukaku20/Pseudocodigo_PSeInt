Algoritmo notaAlum
	
//Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se 
//calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas 
//vale el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres 
//notas obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los 
//datos del siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben 
//estar comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el 
//promedio y se mostrará un mensaje de error.
	
	Definir  notaFinal como real
	Definir nombre Como Caracter
	Definir practica, teorica, problem Como Real
	nombre = 'a'
	
	Mientras nombre <> '' hacer 
		Escribir 'Ingresa el nombre del alumno '
		Leer nombre
		Si nombre <> ''
			Escribir ' La nota de la practica '
			Leer practica
			Si practica >= 0 y practica <= 10 Entonces
				practica = practica
			Sino 
				Escribir 'Error'
				practica = 0
			FinSi
			Escribir ' Ingresa la nota teorica '
			Leer teorica
			Si teorica >= 0 y teorica <= 10 Entonces
				teorica = teorica
			Sino 
				Escribir 'Error'
				teorica = 0
			FinSi
			Escribir ' nota del problema'
			Leer problem
			Si problem >= 0 y problem <= 10 Entonces
				problem = problem
			Sino 
				Escribir 'Error'
				problem = 0
			FinSi
			notaFinal = (practica*0.1) + (teorica*0.4) + (problem*0.5)
			Si (teorica >= 0 y teorica <= 10) y (practica >= 0 y practica <= 10) y (problem >= 0 y problem <= 10) entonces 
				Escribir ' El alumno ' , nombre , ' tuvo como nota final ', notaFinal
			SiNo
				Escribir 'Hubo un error anterior, deberas volver a cargar las notas del alumno'
			FinSi
		FinSi
		
	FinMientras
	Escribir 'Finaliza el programa' 
FinAlgoritmo
