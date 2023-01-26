Subproceso Menu(opc)

	Segun opc hacer
		1: calcularMuro()
		2: calcularViga()
		3: calcularColumnas()
		4: calcularContraPisos()
		5: calcularTecho()
		6: calcularPisos()
		7: calcularPintura()
		8: calcularIluminacion()
		9: Escribir 'Salir'
			
		De otro modo: Escribir 'opcion incorrecta, intentalo nuevamente'
			
	FinSegun
	
FinSubProceso
Funcion superficie<-calcularSuperficie(a, b)
	Definir superficie Como real
	superficie = a * b
FinFuncion

subproceso calcularMuro()
	definir espesor, largo, alto como real
	Definir superficie Como Real
	Escribir '¿Cuál es el espesor? (20cm o 30cm)'
	Leer espesor
	Escribir '¿Cuál es el largo y el alto?'
	Leer largo, alto
	superficie = calcularSuperficie(alto, largo)
	Escribir 'La superficie del muro es: ' superficie ' m2.'
	Si espesor = 20 Entonces
		Escribir (10.9*superficie) ' kg de cemento; ' 0.09*superficie ' m3 de arena; ' 90*superficie ' ladrillos.'
	SiNo
		Si espesor = 30 Entonces
			Escribir (15.2*superficie) ' kg de cemento; ' 0.115*superficie ' m3 de arena; ' 120*superficie ' ladrillos.'
		SiNo
			Escribir 'Error'
		FinSi
	FinSi
		
FinFuncion

Subproceso calcularViga()
	Definir largo Como Entero
	Escribir 'Ingrese el largo de la viga'
	Leer largo
	Escribir 'La viga tiene ' largo ' metros.'
	Escribir largo*9 ' kg de cemento; ', largo*0.02 ' m3 de arena; ', largo*0.02 ' m2 de piedra; ' largo*4 ' m de hierro del 8; ' largo*3 ' m de hierro del 4;'
FinSubProceso

Subproceso calcularColumnas()
	Definir largo Como Entero
	Escribir 'Ingrese el largo de la columna'
	Leer largo
	Escribir 'La columna tiene ' largo ' metros.'
	Escribir largo*7.5 ' kg de cemento; ', largo*0.016 ' m3 de arena; ', largo*0.02 ' m2 de piedra; ' largo*6 ' m de hierro del 10; ' largo*3 ' m de hierro del 4;'
FinSubProceso

Funcion volumen<-calcularVolumen(a, b, c)
	definir volumen Como Real
	volumen = a * b * c
FinFuncion

Subproceso calcularContraPisos()
	Definir espesor, ancho, largo Como Real
	Definir volumen Como Real
	Escribir 'Ingrese el espesor, el ancho y el largo'
	leer espesor, ancho, largo
	volumen = calcularVolumen(espesor, ancho, largo)
	Escribir 'El volumen del contrapisos es ' volumen ' m3.'
	Escribir volumen*105 ' kg de cemento; ' volumen*0.45 ' m3 de arena; ' volumen*0.9 ' m3 de piedra.'
FinSubProceso

Subproceso calcularTecho()
	Definir espesor, ancho, largo Como Real
	Definir superficie Como Real
	Escribir 'Ingrese el espesor, el ancho y el largo'
	leer espesor, ancho, largo
	superficie = calcularSuperficie(ancho, largo)
	Escribir 'La superficie del techo es ' superficie ' m2.'
	Escribir superficie*33 ' kg de cemento; ' superficie*0.072 ' m3 de arena; ' superficie*0.72 ' m3 de piedra.' superficie*7 ' m de hierro del 8; ' superficie*4 ' m de hierro del 6.'
FinSubProceso

Subproceso calcularPisos()
	Definir ancho, largo Como Real
	Definir superficie como real
	Escribir 'Ingrese el ancho y el largo del piso'
	Leer ancho, largo
	superficie = calcularSuperficie(ancho, largo)
	Escribir 'La superficie del piso es ' superficie
	Escribir 'El paño de piso que necesita es ' superficie*1.1 ' m2.'
FinSubProceso

Subproceso calcularPintura()
	Definir ancho, alto Como Real
	Definir superficie como real
	Escribir 'Ingrese el ancho y el alto del muro a pintar'
	Leer ancho, alto
	superficie = calcularSuperficie(ancho, alto)
	Escribir (trunc(superficie/6)+1) ' litros aproximadamente.'
FinSubProceso

Subproceso calcularIluminacion()
	Definir ancho, largo Como Real
	Definir superficie como real
	Escribir 'Ingrese el ancho y el largo de la habitación'
	Leer ancho, largo
	superficie = calcularSuperficie(ancho, largo)
	Escribir 'La iluminacion minima natural necesaria debe ser ' superficie*0.20 ' m2.'
	
FinSubProceso
//El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a
//		creatividad del programador

Algoritmo Cooperativo3
	Definir opc Como Entero
	Repetir
		Escribir '1 - Calcular muro de ladrillo;	'
		Escribir '2 - Calcular viga de hormigón;	'
		Escribir '3 - Calcular columnas de hormigón;'
		Escribir '4 - Calcular contrapisos; '
		Escribir '5 - Calcular techo; '
		Escribir '6 - Calcular pisos; '
		Escribir '7 - Calcular pintura; '
		Escribir '8 - Calcular iluminación; '
		Escribir '9 - Salir '
		Leer opc
		Menu(opc)
	Mientras que opc <> 9
FinAlgoritmo
