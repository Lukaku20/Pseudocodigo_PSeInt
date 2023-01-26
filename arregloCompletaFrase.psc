Algoritmo completarFrase
	Definir fraseA, frase, symbol, frase2 Como Caracter
	Definir i, longitudDeCaracter, ubi, cont, cont2 Como Entero
	Definir seguir como logica
	Dimension frase(20)
	dimension frase2(20)
	cont = 5
	cont2 = 3
	Escribir 'Ingresa una frase, como.. Hola mundo cruel!!'
	Leer fraseA 
	longitudDeCaracter = Longitud(fraseA)
	
	Para i<-0 hasta longitudDeCaracter -1 Hacer
		frase(i) = subcadena(fraseA,i,i)
	FinPara
	
	Para i<-0 hasta longitudDeCaracter -1 Hacer
		Escribir frase(i) ' ' Sin Saltar
	FinPara
	Escribir ' '
	seguir = verdadero
	Mientras seguir = verdadero Hacer
		Escribir 'Ahora hagamos otra cosa, ingresa un símbolo(@,&,%,#,Ç)'
		Leer symbol
		Escribir 'Ahora dime la ubicacion donde quieres que lo ponga'
		Escribir 'Sólo si la posicion está vacía lo colocaré.'
		leer ubi
		Si frase(ubi) = ' ' o frase(ubi) = '' Entonces
			Para i<-ubi hasta ubi Hacer
				frase(i) = symbol 
			FinPara
			Para i<-0 hasta longitudDeCaracter -1 Hacer
				Escribir frase(i) sin saltar
			FinPara
			Escribir ' ' 
			cont = cont - 1
			Si cont = 0 Entonces
				Escribir 'Ganaste! completaste todos los espacios vacios del vector #frase '
				seguir = falso
			FinSi
		SiNo
			para i<-ubi hasta longitudDeCaracter-1 Hacer
				frase2(i) = frase(i)
			FinPara
			frase(ubi) = symbol
			para i<-ubi hasta longitudDeCaracter-1 Hacer
				frase(i+1) = frase2(i)
			FinPara
			Para i<-0 hasta longitudDeCaracter -1 Hacer
				Escribir frase(i) sin saltar
			FinPara
			Escribir ' ' 
//			Escribir 'Esa posición está siendo ocupado por: ' frase(ubi)
//			Escribir 'No es posible reemplazarla'
//			cont2 = cont2 - 1
//			Si cont2 = 0 entonces
//				seguir = falso
//			FinSi			
	FinSi
	Fin Mientras
	
FinAlgoritmo
