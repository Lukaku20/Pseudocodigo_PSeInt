Algoritmo promedioNota
	//Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un
	//curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
	//igual a 70; y reprueba en caso contrario.
	Definir notaUno, notaDos, notaTres Como Entero
	definir promedio como real 
	definir promedio1 Como Entero
	Escribir 'Introducir las tres ultimas notas de tus examenes'
	leer notaUno, notaDos, notaTres
	promedio = (notaDos+notaTres+notaUno) / 3
	promedio1 = trunc(promedio)
	Si promedio1 >= 70 Entonces
		escribir 'Aprobado con ' promedio1 
	SiNo
		escribir 'Ponele ganas, nos vemos en marzo, ', promedio1 , ' no fue suficiente'
	FinSi
	
FinAlgoritmo
