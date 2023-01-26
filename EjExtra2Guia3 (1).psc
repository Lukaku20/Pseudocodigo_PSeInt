//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).
Algoritmo EjExtra2Guia3
	Definir num Como Cadena 
	Definir numE , nuevaFrase , x Como Entero
	numE = 0
	Escribir "Por favor ingrese el numero a convertir : " ; Leer num
	Escribir converse(num , numE)
FinAlgoritmo
Funcion numE <- converse(num , numE)
	Definir i , p , z Como Entero
	Definir x Como Caracter
	z = 0
	p = 1
	i = 0
	numE = 0
	Para i <- 0 hasta Longitud(num) Con Paso 1 Hacer
		x = Subcadena (num,i,i)
		z = Longitud(num)
		Segun x Hacer
			"0":
				p = 0
			"1":
				p = 1
			"2":
				p = 2
			"3":
				p = 3
			"4":
				p = 4
			"5":
				p = 5
			"6":
				p = 6
			"7":
				p = 7
			"8":
				p = 8
			"9":
				p = 9
		FinSegun
		Segun z Hacer
			3:
				Si i+1 == 1 y p <> 0 y Longitud(num) = 3 Entonces
					numE = numE + (p * 100)
				SiNo
					si i+1 == 2 y p <> 0 Entonces
						numE = numE + (p * 10)
					SiNo
						si i+1 == 3 y p <> 0 Entonces
							numE = numE + p
						FinSi
					FinSi
				FinSi
			2:
				si i+1 == 1 y p <> 0 Entonces
					numE = numE + (p * 10)
				SiNo
					si i+1 == 2 y p <> 0 Entonces
						numE = numE + p
					FinSi
				FinSi
			1:
				si i+1 == 1 y p <> 0 Entonces
					numE = numE + p
				FinSi
		FinSegun
	FinPara
	
FinFuncion
	