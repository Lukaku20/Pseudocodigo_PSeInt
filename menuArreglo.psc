//Realizar un programa con el siguiente men� y le pregunte al usuario que quiere hacer hasta
//que ingrese la opci�n Salir:
//	A. Llenar Vector A. Este vector es de tama�o N y se debe llenar de manera aleatoria
//	usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa informaci�n s�lo se solicitar� una
//vez.

Algoritmo menuArreglo
	Definir occion, a, pausa  Como Caracter
	Definir tamano, i como entero
	Definir VectorA, VectorB, VectorC como entero
	Escribir 'Coloca el tama�o de los vectores'
	Leer tamano
	Dimension VectorA(tamano), VectorB(tamano), VectorC(tamano)
	pausa = 'Presiona Enter para continuar'
	Hacer
		leer pausa
		Escribir 'Ingresa el men�'
		Escribir 'A. Llenar Vector A'
		Escribir 'B. LLenar Vector B'
		Escribir 'C. LLenar Vector C con la suma de A y B'
		Escribir 'D. Llenar Vector C con la resta de A y B'
		Escribir 'E. Mostrar. Elegir que vector quiere mostrar'
		Escribir 'F. Salir'
		leer occion
		occion = minusculas(occion)
		Segun occion hacer
			'a': para i<-0 hasta tamano-1 Hacer
					VectorA(i) = aleatorio(-100,100) 
				FinPara
				Escribir 'Vector A se ha completado'
			'b': para i<-0 hasta tamano-1 Hacer
					VectorB(i) = aleatorio(-100,100) 
				FinPara
				Escribir 'Vector B se ha completado'
			'c':para i<- 0 hasta tamano-1 Hacer
					VectorC(i) = VectorA(i) + VectorB(i)
				FinPara
				Escribir  'Vector C se ha completado'
			'd':para i<- 0 hasta tamano-1 Hacer
				VectorC(i) = VectorA(i) - VectorB(i)
				FinPara
				Escribir  'Vector C se ha completado'
			'e':Escribir '�qu� vector deseas mostrar, A, B o C?'
				Leer a
				a = Minusculas(a)
				Segun a hacer 
					'a': Escribir 'El Vector A contiene:' 
						para i<-0 hasta tamano-1 Hacer
							Escribir '[' VectorA(i) ']'
						FinPara
					'b':Escribir 'El Vector B contiene:'
						para i<-0 hasta tamano-1 Hacer
							Escribir '[' VectorB(i) ']'
						FinPara
					'c':Escribir 'El Vector C contiene:'
						para i<-0 hasta tamano-1 Hacer
							Escribir '[' VectorC(i) ']'
						FinPara
				De otro modo
				Escribir 'Esa opcion no es valida'
				FinSegun
			'f': Escribir 'Salir'
			De otro modo
			Escribir 'Esa opcion no es valida'
		FinSegun
Mientras que occion <> 'f'
	
FinAlgoritmo

