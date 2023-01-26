//
//Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
//un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
//posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
//o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
//	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	más cercano.



Algoritmo sin_titulo
	
	definir v1, frase, char como caracter
	definir i, n, pos  Como Entero
	definir der, izq como logico
	dimension v1(20)
	
	escribir "Escriba la frase"
	leer frase
	
	para i=0 hasta 19 Hacer
		v1(i)=subcadena(frase,i,i)
	FinPara
	
	escribir "ingrese el caracter a ingresar"
	leer char
	escribir "Indique la posicion donde desea ubicar el caracter"
	leer pos
	
	si v1(pos)=" "                      ///Si la posicion es un espacio reemplaza directamente con el caracter
		
		v1(pos)=char
	    
	SiNo
		der=falso
		izq=falso
		i=pos
		hacer                             ///ciclo para determinar que valor se hace Verdadero primero si der o izq
			si v1(i+1)= " "
				der=Verdadero
			sino 
				si v1(i-1)=" "
					izq=verdadero
				FinSi
			FinSi
		mientras que der=falso	y izq=falso        ///sale del ciclo si alguno se hace Verdadero
		
		
		si der=Verdadero
			para i=pos hasta 19 Hacer                                  ///escribir a la derecha
				v1(i)=subcadena(frase,i-1,i-1)
			FinPara
			
	    sino
			para i=pos hasta 0 con paso -1 Hacer                      ///escribir a la izquierda
				v1(i)=subcadena(frase,i+1,i+1)
			FinPara
		
	    FinSi
		
		v1(pos)=char
		
	FinSi
	
	para i=0 hasta 19 Hacer                                   ///escritura de la frase modificada
		
		escribir ,v1(i) " " Sin Saltar
		
	FinPara 
	Escribir ""
FinAlgoritmo
