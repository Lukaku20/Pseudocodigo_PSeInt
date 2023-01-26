//Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//programa pedirá el número de días que se van a introducir.

Subproceso temperaturaMedia(a, b, c)
	Definir media como real 
	media = (a + b)/2
	Escribir "La temperatura media del dia ' c ' fue: ' media 'º'
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
