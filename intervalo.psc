Algoritmo intervalo
	//Escriba un programa que solicite dos números enteros (mínimo y máximo). A 
	//continuación, se debe pedir al usuario que ingrese números enteros situados entre el 
	//máximo y mínimo. Cada vez que un número se encuentre entre ese intervalo, se sumara 
	//uno a una variable. El programa terminará cuando se escriba un número que no 
	//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de 
	//números ingresados dentro del intervalo.
	
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
