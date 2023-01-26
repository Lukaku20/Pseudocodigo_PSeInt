/// Realizar un programa que cree una matriz de 5x15
/// y deberemos llenar la matriz de unos y ceros.
/// Llenando el marco o la delimitación externa de la
/// matriz de unos y la parte interna de ceros.




Algoritmo Ejercicio11MatricesExtra
	
	Definir matr, i, j, n, m Como Entero
	
	Escribir "Ingresar el tamaño de la matriz (alto y ancho)"
	Leer n
	Leer m
	
	Dimension matr(n, m)
	
	j = 0
	
	Para i = 0 Hasta n - 1 Hacer
		
		Para j = 0 Hasta m - 1 Hacer
			
			Si i == 0 o i == (n - 1) o j == 0 o j == (m - 1) Entonces
				
				Escribir Sin Saltar " 1 "
				
			SiNo
				
				Escribir Sin Saltar " 0 "
				
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinAlgoritmo
 