Algoritmo seMeZafoUnTornillo
//Escriba un programa para obtener el grado de eficiencia de un operario de una f�brica de
//tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un per�odo
//de prueba:
//? Producir menos de 200 tornillos defectuosos.
//? Producir m�s de 10000 tornillos sin defectos.
//? El grado de eficiencia se determina de la siguiente manera:
//	? Si no cumple ninguna de las condiciones, grado 5.
//	? Si s�lo cumple la primera condici�n, grado 6.
//	? Si s�lo cumple la segunda condici�n, grado 7.
//	? Si cumple las dos condiciones, grado 8
	
	Definir tornilloDefectuoso, tornilloBien Como logico
	Definir num1, num2 como entero
	Escribir 'Esta es una prueba de eficiencia en tu trabajo. Escribe primero: �cu�ntos tornillos te salieron defectuosos? '
	escribir ' Y luego, �cu�ntos tornillos buenos hiciste? '
	leer num1, num2 
	
	tornilloBien = num2> 10000 
	tornilloDefectuoso = num1<200
	si tornilloBien = Verdadero y tornilloDefectuoso = Verdadero
		escribir 'Lo lograste, grado 8'
	Sino
		si tornilloBien = Verdadero y tornilloDefectuoso = Falso
			escribir ' Muy bien, grado 7'
		Sino
			si tornilloBien = Falso y tornilloDefectuoso = Verdadero
				escribir 'Bueno, grado 6'
			SiNo
				si tornilloBien = Falso y tornilloDefectuoso = Falso
					escribir 'Mal, grado 5'
				FinSi
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
