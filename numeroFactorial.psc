Algoritmo numeroFactorial
	//La funci�n factorial se aplica a n�meros enteros positivos. El factorial de un n�mero
	//entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
	//n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
	//Escriba un programa que calcule las factoriales de todos los n�meros enteros desde el 1
	//hasta el 5. El programa deber� mostrar la siguiente salida:
	//!1 = 1
	//!2 = 1*2 = 2
	//...
	//!5 = 1*2*3*4*5 = 120
	Definir factorial, i, n, x Como Entero
	factorial = 1
	i=1
	Escribir 'La funci�n factorial se aplica a n�meros enteros positivos. El factorial de un n�mero'
	Escribir 'entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:'
	Leer n
	Escribir '!1 = 1'
	Para i<-2 hasta n con paso 1 Hacer
		factorial = factorial * i
		Para x<-1 hasta i con paso 1 Hacer
			Si x == 1 entonces 
				escribir sin saltar '!',i,' = '
			FinSi
			Si x < i
				escribir Sin Saltar ConvertirATexto(x)+'x'
			SiNo
				escribir sin saltar ConvertirATexto(x)
			FinSi
		FinPara
		Escribir ' = ' factorial
	FinPara
	
	
FinAlgoritmo
