Algoritmo numpar_numimpar
	definir num Como Entero
	Escribir "Introduzca un número entero"
	Leer num
	
	si num=0 Entonces
		escribir "no es par ni impar"
	SiNo
		si (num mod 2)=0 Entonces
			escribir "es par"
		SiNo
			escribir "es impar"
		FinSi
	FinSi
	
FinAlgoritmo
