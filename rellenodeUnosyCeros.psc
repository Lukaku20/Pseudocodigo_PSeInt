Algoritmo rellenodeUnosyCeros
	Definir matriz, i, j Como Entero
	dimension matriz(5,15)
	
	para i<-0 hasta 4 Hacer
		para j<-0 hasta 14 hacer 
			Si i = 0 o i = 4 Entonces
				escribir sin saltar '1'
			SiNo
				si (i = 1 o i = 2 o i = 3) y (j = 0 o j = 14)
					escribir sin saltar '1'
				
				Sino
					escribir sin saltar '0'
				FinSi
			FinSi
		FinPara
		escribir' ' 
	FinPara
FinAlgoritmo
