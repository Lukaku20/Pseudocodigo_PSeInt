//Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//programa pedir� el n�mero de d�as que se van a introducir.

Subproceso temperaturaMedia(a, b, c)
	Definir media como real 
	media = (a + b)/2
	Escribir "La temperatura media del dia ' c ' fue: ' media '�'
FinSubProceso

Algoritmo temperaturaMediaDelDia
	Definir dias, i Como Entero
	Definir tempMin, tempMax Como Real
	Escribir 'ingrese el numero de dias a evaluar'
	Leer dias
	Para i<-1 hasta dias hacer 
		Escribir 'Ingrese la temperatura maxima'
		leer tempMax
		Escribir 'ingrese la temperatura minima'
		leer tempMin
		temperaturaMedia(tempMax,tempMin, i)
	FinPara
	
FinAlgoritmo
