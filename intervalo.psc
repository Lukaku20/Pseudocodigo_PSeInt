Algoritmo intervalo
	//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A 
	//continuaci�n, se debe pedir al usuario que ingrese n�meros enteros situados entre el 
	//m�ximo y m�nimo. Cada vez que un n�mero se encuentre entre ese intervalo, se sumara 
	//uno a una variable. El programa terminar� cuando se escriba un n�mero que no 
	//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de 
	//n�meros ingresados dentro del intervalo.
	
	Definir minimo, maximo, cont, num Como Entero
	minimo = 0
	maximo = 0
	cont = 0
	Escribir 'Escribe un numero minimo'
	leer minimo
	escribir 'Escribe el numero maximo'
	leer maximo
	Escribir 'Un numero que se encuentre entre el intervalo'
	leer num
	Mientras minimo <= num y num <= maximo Hacer
		cont = cont + 1
		Escribir 'Escribir otro numero'
		leer num
	FinMientras
	Escribir 'La cantidad de numeros ingresados dentro del intervalo fue: ', cont
	
FinAlgoritmo
