Algoritmo porcentajeEstudiantes
	Definir cantidadTotal, cantidadNinos, cantidadNinas Como Entero
	Definir promedio1, promedio2 Como Real
	
	Escribir 'Cual es la cantidad total de ni�os en el curso'
	Leer cantidadTotal
	Escribir 'Cuantas son ni�as'
	Leer cantidadNinas
	cantidadNinos = cantidadTotal - cantidadNinas
	promedio1 = (cantidadNinos * 100) / cantidadTotal
	promedio2 = (cantidadNinas * 100) / cantidadTotal
	
	Escribir 'El porcentaje de ni�as del curso es ', promedio2, '%'
	Escribir 'El porcentaje de ni�os del curso es ', promedio1, '%'
FinAlgoritmo
