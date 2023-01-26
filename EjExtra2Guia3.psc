

//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).Algoritmo sin_titulo

Algoritmo  EjExtra2Guia3
	Definir num como cadena 
	Definir numE como entero
	Escribir "por favor ingrese el numero a convertir: "; leer num
		
FinAlgoritmo
Funcion numE<- converse(num, numE)
	para i <- 1 Hasta Longitud(num) con paso 1 Hacer
		x = Subcadena(frase, i , i ) 
		segun x Hacer
			"0":
				x=0
			"1":
				x=1
				
				
				
		FinSegun
	FinPara
	
FinFuncion
