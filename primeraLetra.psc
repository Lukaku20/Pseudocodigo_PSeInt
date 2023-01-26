Algoritmo primeraLetra
	definir palabra Como Caracter
	definir palabra1 como entero
	escribir 'ingresa una palabra'
	leer palabra
	palabra = Mayusculas(palabra)
	palabra1 = longitud(palabra) -1
	Si subcadena(palabra, 0, 0) = subcadena(palabra, palabra1, palabra1) entonces
		escribir 'correcto'
	SiNo
		escribir 'incorrecto'
	FinSi
	
FinAlgoritmo
