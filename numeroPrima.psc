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

//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.


Algoritmo numeroPrima
	Definir num Como Entero
	Escribir 'Dame un numero, a ver si es primo o no'
	Leer num
	escribir numeroPrimo(num)
	
FinAlgoritmo
