Algoritmo Ejercicio5
	Definir n, i Como Entero
	Definir datos Como Real
	Dimension datos[10];
	Escribir "Ingrese la cantidad de elementos:";
	Leer n;
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese el " i+1 " elemento";
		Leer datos[i];
	FinPara
	Escribir "El mayor elemento es: ", numeroo(datos, n, i)
FinAlgoritmo

Funcion resultado <- numeroo (datos, n, i)

	Definir numero1, numero2, resultado Como Real
	Si datos[0]>datos[1] Entonces
		numero1<-datos[0];
		numero2<-datos[1];
	Sino
		numero1<-datos[1];
		numero2<-datos[0];
	FinSi
	Para i<-2 Hasta n-1 Hacer
		Si datos[i]>numero1 Entonces
			numero2<-numero1;
			numero1<-datos[i];
		Sino
			Si datos[i]>numero2 Entonces
				numero2<-datos[i];
			FinSi
		FinSi
	FinPara
	
	resultado<- numero1
	
FinFuncion

