Funcion retorno <- numeroPrimo ( a )
	Definir retorno Como Caracter
	Definir i, cont como entero
	cont = 0
	retorno = ' ' 
	Para i<- 1 hasta a Hacer
		si a mod i = 0 entonces
		cont = cont + 1
		FinSi
	FinPara
	Si cont = 2  entonces
		escribir a, ' si es primo'
	SiNo
		escribir a, ' no es primo'
	FinSi
Fin Funcion

//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.


Algoritmo numeroPrima
	Definir num Como Entero
	Escribir 'Dame un numero, a ver si es primo o no'
	Leer num
	escribir numeroPrimo(num)
	
FinAlgoritmo
