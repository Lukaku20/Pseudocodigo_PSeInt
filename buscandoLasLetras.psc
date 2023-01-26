Funcion resultado <- buscarLetra ( frase, letra )
	Definir resultado Como Entero
	Definir i, n Como Entero
	resultado = 0 
	n = longitud(frase)-1
	Para i<- 0 hasta n con paso 1 hacer
		Si subcadena(frase,i,i) = letra Entonces
			resultado = resultado + 1
		FinSi
	FinPara
Fin Funcion

//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//función Subcadena().



Algoritmo buscandoLasLetras
	Definir frase, letra Como Caracter
	Escribir ' Ingresa una frase'
	Leer frase
	Escribir 'ingresa una letra a buscar'
	Leer letra
	Escribir buscarLetra(frase, letra) ' veces.'
	
FinAlgoritmo
