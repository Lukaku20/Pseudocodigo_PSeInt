Algoritmo longitudDeFrase
	Definir frase como caracter
	definir i, n Como Entero
	frase = ' '
	Escribir 'Ingresa la frase' 
	leer frase
	n = Longitud(frase) 
	Para i <- 0 Hasta n Con Paso 1 Hacer
		escribir sin saltar (SubCadena(frase,n-i,n-i))," " 
	FinPara

FinAlgoritmo
