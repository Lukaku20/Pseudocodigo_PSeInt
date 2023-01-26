//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
//también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
//encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
//mensaje.

Algoritmo rastreoArreglo
	Definir n, i, i1, v, p, p1 Como Entero	
	Definir array, control como caracter
	n = 10
	Dimension array(n)
	Repetir
		Escribir 'Primero dime que quieres hacer: ¿Buscar una fecha o guardar una tarea?'
		Escribir 'A. Buscar una fecha.'
		Escribir 'B. Guardar una tarea'
		Escribir 'C. Salir'
		Leer control
		control = Mayusculas(control)
		i = 1
		Segun control Hacer
			
			'A': Escribir 'Te ayudarè a recordar la fecha que me pidas, solo dime'
				Escribir '¡¿En qué posición lo guardaste!'
				Leer p 
				escribir rastreoDia(array, n, p)
			'B':Escribir '¿cuantos recordatorios quieres guardar?'
				Leer p1
				//Se coloca la cantidad de valores que se quiere guardar.
				Escribir 'Dime que tarea quieres recordar en el futuro' 
				Para n hasta p1 hacer 
					n = n - 1
					Leer array(n)
					Escribir 'Guardado en la posicion ' i
					i = i +1
				Fin para
				
				
				
				
				
				
		FinSegun
	Hasta que control = 'C'
FinAlgoritmo


Funcion return<-rastreoDia(array por referencia, n, p por referencia)
	definir return como caracter
	
	
	para i1<-0 hasta n-1 Hacer
		Si array(n-i1) = array(p) Entonces
			Escribir 'Lo que habias guardado en esta posición es'
			Escribir '[' array(i) '] '
		FinSi
	FinPara
FinFuncion
Funcion return<-rastreoFecha(array por referencia)
	SI array(i) = 0 Entonces
		escribir 'Ese día no esta cargado con hechos para recordar'
		//El numero no se haya entre los elementos del arreglo'
	FinSi
	FinFuncion
	