//Programe una función que calcule el producto de un arreglo de números enteros. Para esto 
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es 
//		igual a (V[1]*V[2]*V[3]*V[4])
Algoritmo arregloMulti
	Definir vector, i, n, multi como entero 
	Escribir 'Ingresa el tamaño para el vector'
	Leer n 
	Dimension vector(n)
	para i<-0 hasta n-1 hacer
		Escribir 'ingresa el valor que quieres guardar en el arreglo, sobre la posicion: ' i
		Leer vector(i)
	FinPara
	multi=1
	para i<-0 hasta n-1 hacer
		multi=multi*vector(i)
		Si i >=0 y i <=n-2
			Escribir sin saltar vector(i) ' * '
		FinSi		
		si i = n-1 entonces
			escribir sin saltar vector(i) ' = ' , multi
			escribir ' ' 
		FinSi
		
	FinPara
FinAlgoritmo
