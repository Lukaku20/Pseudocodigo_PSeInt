Algoritmo numRaro
	//Escriba un programa que solicite al usuario n�meros decimales mientras que el usuario 
//escriba n�meros mayores al primero que se ingres�. Por ejemplo: si el usuario ingresa 
//como primer n�mero un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer 
//n�mero. El programa continuar� solicitando valores sucesivamente mientras los valores 
	//ingresados sean mayores que 3.1, caso contrario, el programa finaliza.4
	
	Definir NUM , num2 Como Real
	Escribir 'ingresa un numero inicial'
	leer NUM
	Escribir 'Ingreso otro numero'
	leer num2
	Mientras NUM < num2 Hacer
	
		Escribir 'Ingresa nuevamente un numero con decimales o no'
		leer num2
	FinMientras
	Escribir 'Finaliza porque ingresaste un numero menor al inicial'
FinAlgoritmo
