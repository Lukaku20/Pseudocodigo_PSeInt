//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
Algoritmo matrizPalabra
	Definir matriz, palabra, vector Como Caracter
	Definir i, j, longitudPal, long Como Entero
	Dimension matriz(3,3)
	DImension vector(9)
	Escribir 'Ingresa una palabra de nueve letras'
	hacer
		Leer palabra
		longitudPal=Longitud(palabra)
	mientras que longitudPal <> 9
	long=-1
	para i<-0 hasta 2 Hacer
		para j <-0 hasta 2 Hacer
			long=long +1
			matriz(i,j) = subcadena(palabra,long,long)
		FinPara
	FinPara
	
	para i<-0 hasta 2 Hacer
		para j <- 0 hasta 2 Hacer
			Escribir sin saltar '(' matriz(i,j) ')'
		FinPara
		escribir ' '
	FinPara
	
FinAlgoritmo
