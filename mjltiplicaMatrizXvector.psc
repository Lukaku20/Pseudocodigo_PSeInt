//Realizar un programa que permita visualizar el resultado del producto de una matriz de 
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden 
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se 
//realiza la multiplicación entre matrices consultar el siguiente link: 
Algoritmo multuplicaMatrizXVector
	Definir matrizA, matrizB, vectorA, i, j como entero
	Dimension matrizA(3,3)
	dimension vectorA(3)
	dimension matrizB(3,3)
	para j<-0 hasta 2
		vectorA(j)=aleatorio(1,9)
		para i<-0 hasta 2
			matrizA(i,j)=aleatorio(1,9)
			matrizB(i,j) = vectorA(j)*matrizA(i,j)
		FinPara
		escribir  ' '
	FinPara

	para i<-0 hasta 2
		
		para j<-0 hasta 2
			escribir sin saltar '[' matrizA(i,j) ']'
			
		FinPara
		escribir ' ' 
	FinPara
	para i <-0 hasta 2 Hacer
		Escribir sin saltar  vectorA(i) '  '
	FinPara
	escribir ' ' 

	para i<-0 hasta 2
		
		para j<-0 hasta 2
			escribir sin saltar '[' matrizB(i,j) ']'
			
		FinPara
		escribir ' ' 
	FinPara
	
	
FinAlgoritmo
