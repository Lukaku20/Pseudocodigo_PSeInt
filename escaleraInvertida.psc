Algoritmo escaleraInvertida
	//Escriba un programa que lea un n�mero entero (altura) y a partir de �l cree una escalera
	//invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
	//deber� mostrar:
	//	*****
	//	****
	//	***
	//	**
	//	*
	
	Definir alt, i, h Como Entero
	escribir 'ingrese altura'
	Leer alt
	
	para i <- 1 hasta alt Hacer
		para h = i hasta alt Hacer
			escribir sin saltar '*'
		FinPara
		escribir ' ' 
	FinPara
	para i <- 1 hasta alt Hacer
		para h=1 hasta i hacer 
			escribir sin saltar '*'
		FinPara
		escribir ' ' 
	FinPara
FinAlgoritmo
