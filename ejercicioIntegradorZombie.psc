//El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z
//analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
//compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen
//	Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que
//	todas las bases sean iguales. Siguiendo el ejemplo de la muestra anterior la matriz resultante es.
//Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) debe ser 3x3, 4x4 o 37x37
//	(según la muestra). Por desgracia, de antemano no es posible saber el orden de la matriz y el mismo debe ser
//	inferido de la muestra ingresada.
//Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que
//	imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.
//a) Es obligatorio el uso de al menos una variable N-dimensional.
//b) La muestra la guardamos en una variable en el código, no por consola. Es decir:
//	NO hay que usar Leer muestra sino asignarle un valor muestra = "ACDDCADBCDABDBBA" en el código
//	c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas
//	
Algoritmo ejercicioIntegradorZombie
	Definir valorMuestra, matriz, copi como cadena
	Definir m, n, i, j, k Como Entero
	
	valorMuestra = 'CABCCCCBACCCCABC'
	m=longitud(valorMuestra)
	
	dimension copi(m)
	n=raiz(m)
	Dimension matriz(n,n)
	
	pasarMuestraPorVector(valorMuestra,copi, m)
	
//	Para i<-0 hasta m-1 Hacer
//		Escribir sin saltar ' ' copi(i) ' '
//	FinPara
//	escribir ' '
	Escribir 'El valor de m es : ' m
	Escribir 'La matriz tiene tamaño ( ' n ',' n ' )'
	
	rellenarMatriz(matriz, copi, n)
	detectarGen(matriz, n)
	
FinAlgoritmo

Subproceso pasarMuestraPorVector(valorMuestra, copi, m)
	definir i, j Como Entero
	para i<-0 hasta m-1 Hacer
		copi(i) = subcadena(valorMuestra, i, i)
	FinPara
FinSubProceso

Subproceso rellenarMatriz(matriz, copi, n)
	Definir i, j, k Como Entero
	k=0
	para i<-0 hasta n-1 Hacer
		para j<-0 hasta n-1 Hacer
			matriz(i,j) = copi(k)
			k=k+1
		FinPara
	FinPara
	para i<-0 hasta n-1 Hacer
		para j<-0 hasta n-1 Hacer
			escribir sin saltar '  ' matriz(i,j) '  '
		FinPara
		escribir '  '
	FinPara
FinSubProceso

Subproceso detectarGen(matriz, n)
	Definir comprobarDiagonal1, comprobarDiagonal2, GENZ como logica
	Definir i, j, k Como Entero
	Definir comparacion como cadena
	comprobarDiagonal1 = VERDADERO
	comprobarDiagonal2 = verdadero
	para i<-0 hasta n-1 Hacer
		Para j<-0 hasta n-1 Hacer			
			Si i=j Entonces
				comparacion = matriz(0,0)
				Si comparacion <> matriz(i,j)
					comprobarDiagonal1 = falso
				FinSi				
			FinSi
		FinPara
	FinPara
	comparacion = matriz(n-1,0)
	k=0
	para i<-n-1 hasta 0 hacer 
		Si comparacion <> matriz(i,k)
			comprobarDiagonal2 = falso
		FinSi		
		k=k+1
	FinPara
	GENZ = comprobarDiagonal1 Y comprobarDiagonal2
	Escribir 'Es ' GENZ ' que la matriz tiene el GEN Z'
FinSubProceso
	