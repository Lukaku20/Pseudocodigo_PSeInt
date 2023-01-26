//Este algoritmo sirve para crear matrices magicas.
Algoritmo matrizMagicaDefinitivo
	Definir matrizMag, num, num2, vec, i, j, k como entero
	Escribir 'Anota el numero de orden de la matriz que quieres crear'
	Leer num
	Dimension matrizMag[num,num]
	num2 = num*num
	Dimension vec[num2]
	Escribir 'Perfecto, ahora debemos cargar con numeros esta matriz'
	Escribir '¿Comenzamos?'
	para i<-0 hasta num2-1 Hacer
		Leer vec(i)
	FinPara
	k=0
	para i<-0 hasta num-1 Hacer
		para j <- 0 hasta num-1 Hacer
			
			matrizMag(i,j) = vec(k)
			k=k+1
		FinPara
	FinPara
	para i<-0 hasta num-1 Hacer
		para j <- 0 hasta num-1 Hacer
			escribir sin saltar '{ '	matrizMag(i,j) ' }'
		FinPara 
		escribir ' '
	FinPara
	acomodarMatriz(matrizMag, num, num2)
	imprimirMatriz(matrizMag, num)
	compruebaQueSeaMagica(matrizMag, num)
FinAlgoritmo

Subproceso acomodarMatriz(matrizMag, num, num2)
	
	Definir vec2, d, e, f, nummayor como entero
	Dimension vec2(num2)
	f=0
	Para d<-0 hasta num-1 Hacer
		para e<-0 hasta num-1 Hacer
			vec2(f) = matrizMag(d,e) 
			f=f+1
		FinPara
	FinPara
	nummayor=0
	Para d<-0 hasta num2-1 Hacer
		Si vec2(d) > nummayor entonces
			nummayor = vec2(d)
		FinSi
	FinPara
	Escribir 'El numero mayor es: ' nummayor
	Para e<-0 hasta num2-1 Hacer
		vec2(e) = vec2(e) 
	FinPara
	f=0
	para d<-0 hasta num-1 Hacer
		para e<-0 hasta num-1 Hacer
			matrizMag(d,e) = vec2(f)
			f=f+1
		FinPara
	FinPara
FinSubProceso

Subproceso imprimirMatriz(matrizMag,num)
	Definir i, j Como Entero
	Para i<-0 hasta num-1 Hacer
		para j<-0 hasta num-1 Hacer
			escribir sin saltar '__' matrizMag(j,i) '__'
		FinPara
		escribir '___'
	FinPara
FinSubProceso

Subproceso compruebaQueSeaMagica(matrizMag, num)
	
	Definir i, j, suma1, suma2, suma3, d2 Como Entero
	Definir compruebaCol, compruebaFil, compruebaDia como logica
	Dimension matrizMagica[3,3]
	j=0
//	Escribir 'Este algoritmo comprueba que una matriz sea mágica'
//	para i<-0 hasta 2 Hacer		
//		para j<-0 hasta 2 Hacer			
//			leer matrizMagica(i,j)
//		FinPara
//	FinPara
	para i<-0 hasta 2 Hacer		
		para j<-0 hasta 2 Hacer			
			escribir sin saltar matrizMag(i,j) '|'
		FinPara
		escribir ' ' 
	FinPara
	suma1=0
	suma2=0
	suma3=0
	Para i<-0 hasta 2
		suma1=suma1 + matrizMag(i,0)
		suma2=suma2 + matrizMag(i,1)
		suma3=suma3 + matrizMag(i,2)
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
		suma1=suma1 + matrizMag(0,j)
		suma2=suma2 + matrizMag(1,j)
		suma3=suma3 + matrizMag(2,j)
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
				suma1=suma1 + matrizMag(i,j)
			FinSi
			
		FinPara
	FinPara
	
	d2 = 2
	para i<- 0 Hasta 2 Hacer
		suma2 = suma2 + matrizMag(i,d2)
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
		Escribir suma1 ' esta es la CONSTANTE MÁGICA!'
		Escribir '¡La matriz es M á G i c A!'
	SiNo
		escribir' esta matriz no es mágica'
	FinSi
FinSubProceso
	