Funcion suma <- sumaDigitos ( num )
	definir retorno como entero
	definir unidad, suma como entero

	unidad = 0
	retorno = num
	suma = 0
	mientras num > 0.9 Hacer
		retorno = trunc(num/10)
		unidad = num - (retorno*10)
		suma = suma + unidad
		num = retorno
		escribir unidad ' + '
	FinMientras
	escribir '= ' suma
	
Fin Funcion

//Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
//		resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.


Algoritmo rompeCoco
	Definir num como entero	
	Escribir 'Ingrese el numero que desea que sumemos sus d�gitos'
	leer num
	Escribir sumaDigitos(num) 
FinAlgoritmo
