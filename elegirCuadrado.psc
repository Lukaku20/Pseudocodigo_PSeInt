Algoritmo hacerCuadrado
	Definir num, i, i2 Como Entero	
	
	Escribir "Ingrese un n° entero a partir del cual se hará un cuadrado con asteriscos (*)"
	Leer num
	
	
	Para i <- 1 Hasta num Con Paso 1 Hacer
		para i2 <- 1 hasta num Con Paso 1 Hacer
			si (i>1) y (i<num) y (i2>1) y (i2<num) Entonces
				Escribir "  " Sin Saltar
			SiNo
				Escribir "* " Sin Saltar 
			FinSi
		FinPara
		Escribir ""
	Fin Para
	
	
	
	
FinAlgoritmo