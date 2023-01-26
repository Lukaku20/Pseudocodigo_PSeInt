//Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después, 
//	hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La 
//			función debe devolver el resultado de está validación, para mostrar el mensaje en el algoritmo. 
//				Nota: recordar el uso de las variables de tipo lógico.
Algoritmo ejercicio7_Guia4
	Definir n, vecA, vecB, i, j Como Entero
	Escribir "Ingrese el tamaño de los vectores: "
	Leer n
	i=0
	Dimension vecA(n)
	Dimension vecB(n)
	rellenar(vecA, n, i)
	rellenar(vecB, n, i)
	
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			Si vecA(i)=vecB(j) Entonces
				Escribir "Son iguales " i, " - " j 
			SiNo
				
			FinSi
			
		FinPara
		Si i=0 y i=1 Entonces
			
		FinSi
	FinPara
	
FinAlgoritmo
SubProceso rellenar(vec, n, i)
	Para i<-0 Hasta n-1 Hacer
		vec(i)=Aleatorio(0,0)
		Escribir Sin Saltar "[" vec(i) "]" " "
	FinPara
	Escribir " "
FinSubProceso
	