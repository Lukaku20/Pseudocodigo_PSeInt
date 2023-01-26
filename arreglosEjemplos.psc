Algoritmo arreglosEjemplos
	Definir vector1 Como Caracter
	Definir vector2, suma, i Como Entero
	
	Dimension vector1[4]
	Dimension vector2[6]
	suma=0
	Para i<-0 hasta 3 Hacer
		leer vector1[i]
	FinPara
	para i<-0 hasta 3 Hacer
		escribir sin saltar vector1[i]
	FinPara
	
	para i<-0 hasta 5 Hacer
		leer vector2[i]			
	FinPara
	para i<-0 hasta 5 Hacer
		suma = suma + vector2[i]
		escribir sin saltar vector2[i] ' '		
	FinPara
	escribir sin saltar ' = ' suma
	escribir ' ' 
	
FinAlgoritmo
