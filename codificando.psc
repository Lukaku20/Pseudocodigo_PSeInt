//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
	
//	a e i o u
//	@ # $ % *
	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//	La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
Subproceso codificar (frase, i por referencia, n por referencia)
	frase = Minusculas(frase)
	n=longitud(frase)
	Para i <- 0 hasta n
		Si Subcadena(frase, i, i) = 'a'
			escribir sin saltar '@'
		SiNo
			Si Subcadena(frase, i, i) = 'e'
				escribir sin saltar '#'
			SiNo
				Si Subcadena(frase, i, i) = 'i'
					escribir sin saltar '*'
				SiNo
					Si Subcadena(frase, i, i) = 'o'
						Escribir Sin Saltar '&'
					SiNo
						Si Subcadena(frase, i, i) = 'u'
							escribir sin saltar '%'
						SiNo
							escribir sin saltar Subcadena(frase, i, i) 
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
FinSubProceso

Algoritmo codificando
	
	Definir frase como caracter
	Definir i, n como entero
	i = 0
	Escribir 'Ingresa la frase que quieres codificar'
	Leer frase
	n = longitud(frase)
	codificar(frase, i, n)
	Escribir ' ' 
	
FinAlgoritmo
