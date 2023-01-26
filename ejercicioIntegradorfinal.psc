Algoritmo ejercicioIntegrador
	Definir matriz, muestra Como Cadena
	Definir f, c Como Entero
	
	muestra = "CDDACCACCACAAABC"
	
	Si validarTam(muestra) = Verdadero Entonces
		Escribir "La muestra es valida, estamos trabajando en los siguientes pasos"
	SiNo
		Escribir "La muestra no es valida"
	FinSi
	
	f = raiz(Longitud(muestra))
	C = raiz(Longitud(muestra))
	
	Dimension matriz(f, c)
	
	relleno(matriz, muestra, f, c)
	diagPrin(matriz, f, c, muestra)
	diagSec(matriz, f, c, muestra)
FinAlgoritmo
Funcion tam <- validarTam(muestra)
	Definir tam Como Logico
	tam = Falso
	
	Si Longitud(muestra) = 9 O Longitud(muestra) = 16 O Longitud(muestra) = 1369 Entonces
		tam = Verdadero
	FinSi
FinFuncion

SubProceso relleno(matriz, muestra, f, c)
	Definir i, j, cont Como Entero
	cont = 0
	Para i = 0 Hasta f - 1
		Para j = 0 Hasta c - 1
			matriz(i, j) = Subcadena(muestra, cont, cont)
			Escribir matriz(i, j) " " Sin Saltar
			cont = cont + 1
		FinPara
		Escribir " "
	FinPara
FinSubProceso

SubProceso diagPrin(matriz, f, c, muestra)
	Definir i, j, num, fila Como Entero
	definir k como cadena
	Dimension k(f)
	fila = 0
	Para i = 0 Hasta f - 1
		Para j = 0 Hasta c - 1 Hacer
			Si i = j Entonces
				Escribir matriz(i, j) Sin Saltar
				k(i)=matriz(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso diagSec(matriz, f, c, muestra)
	Definir i, j, num, fila, cont, d Como Entero
	Definir totalDiag Como Logico
	definir h como cadena
	dimension h(f)
	cont = 0
	fila = 0
	d = f - 1
	Escribir " "
	Para i = 0 Hasta f - 1 Hacer
		Escribir matriz(i, d) Sin Saltar
		h(i)=matriz(i, d)
		d = d - 1
	FinPara
FinSubProceso