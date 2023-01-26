//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos 
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se 
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar 
//la matriz de la siguiente forma
//3 + 5 = 8
//4 + 3 = 7
//1 + 4 = 5
Algoritmo Ejercicio12extras
	Definir a, b, c, matriz como entero
	Escribir 'Ingresar numero de filas'
	Leer a
	Dimension matriz(a,3)
	Para b<-0 hasta a-1
		para c<-0 hasta 2
			Si c<>2  Entonces
				escribir 'ingresa el valor para el elemento ' b ',' c
				leer matriz(b,c)
			SiNo
				matriz(b,c) = matriz(b,0) + matriz(b,1)
			FinSi
		FinPara
	FinPara
	Para b<-0 hasta a-1
		para c<-0 hasta 2
			Escribir sin saltar matriz(b,c) 
			Si c==0 Entonces
				escribir sin saltar ' + '
			FinSi
			si c==1 Entonces
				escribir sin saltar ' = '
			FinSi			
		FinPara
		escribir ' ' 
	FinPara
FinAlgoritmo
