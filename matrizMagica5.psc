Algoritmo matrizMagicaMia
	Definir matrizMagica, i, j, suma1, suma2, suma3, d2 Como Entero
	Definir compruebaCol, compruebaFil, compruebaDia como logica
	Dimension matrizMagica[3,3]
	j=0
	Escribir 'Este algoritmo comprueba que una matriz sea mágica'
	para i<-0 hasta 2 Hacer		
		para j<-0 hasta 2 Hacer			
			leer matrizMagica(i,j)
		FinPara
	FinPara
	para i<-0 hasta 2 Hacer		
		para j<-0 hasta 2 Hacer			
			escribir sin saltar matrizMagica(i,j) '|'
		FinPara
		escribir ' ' 
	FinPara
	suma1=0
	suma2=0
	suma3=0
	Para i<-0 hasta 2
		suma1=suma1 + matrizMagica(i,0)
		suma2=suma2 + matrizMagica(i,1)
		suma3=suma3 + matrizMagica(i,2)
	FinPara
	Escribir 'entre ' suma1 ' y ' suma2 ' y ' suma3 ' la relacion es:'
	Si suma1=suma2 y suma2=suma3 Entonces
		compruebaCol=verdadero
	SiNo
		compruebaCol=falso
	FinSi
	escribir compruebaCol
	suma1=0
	suma2=0
	suma3=0
	Para j<-0 hasta 2
		suma1=suma1 + matrizMagica(0,j)
		suma2=suma2 + matrizMagica(1,j)
		suma3=suma3 + matrizMagica(2,j)
	FinPara
	Escribir 'entre ' suma1 ' y ' suma2 ' y ' suma3 ' la relacion es:'
	Si suma1=suma2 y suma2=suma3 Entonces
		compruebaFil=verdadero
	SiNo
		compruebaFil=Falso
	finsi
	escribir compruebaFil
	suma1=0
	suma2=0
	suma3=0
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			Si i==j entonces
				suma1=suma1 + matrizMagica(i,j)
			FinSi
			
		FinPara
	FinPara
	
	d2 = 2
	para i<- 0 Hasta 2 Hacer
		suma2 = suma2 + matrizMagica(i,d2)
		d2 = d2-1 
	FinPara

	Escribir 'entre ' suma1 ' y ' suma2 ' la relacion es:'
	Si suma1=suma2 Entonces
		compruebaDia = verdadero
	sino 
		compruebaDia=falso
	FinSi
	escribir compruebaDia
	Si compruebaCol=verdadero y compruebaDia=verdadero y compruebaFil=Verdadero Entonces
		Escribir '¡La matriz es m á g i c a!'
	SiNo
		escribir' esta matriz no es mágica'
	FinSi
FinAlgoritmo
