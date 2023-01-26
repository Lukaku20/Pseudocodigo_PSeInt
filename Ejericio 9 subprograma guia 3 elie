SubProceso cambiarFrase(frase)
	Definir i Como Entero	
	Definir x, nuevaFrase Como Caracter
	nuevaFrase=""
	
	Para i = 0 Hasta Longitud(frase) Hacer
		x = Subcadena (frase,i,i)
		Segun  x hacer
			"A", "a" :
				x = "@"
				
			"E", "e":
				x = "#"
				
			"I", "i":
				x = "$"
				
			"O", "o":
				x = "%"
				
			"U", "u":
				x = "*"
		FinSegun
		nuevaFrase = Concatenar(nuevaFrase,x)
		
	FinPara
	Escribir nuevaFrase
FinSubProceso

Algoritmo sin_titulo
	Definir frase Como Caracter
	Escribir "ingrese una frase"
	Leer frase
	cambiarFrase(frase)
FinAlgoritmo


	
