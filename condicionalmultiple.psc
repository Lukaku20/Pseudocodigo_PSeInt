Algoritmo condicionalmultiple
//Construir un programa que simule un men� de opciones para realizar las cuatro  operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) 
//con dos valores  num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer  car�cter de la operaci�n que desea 
//realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?  o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
	
	
	definir f Como Caracter
	definir n1, n2 Como Real
	escribir " porfavor ingresa el primer valor"
	leer n1
	escribir " Por favor ingresa el segundo valor"
	leer n2
	escribir " por favor selecciona la operaci�n a ejecutar ? s para la suma, r para la resta, m para la multiplicaci�n y d para la divisi�n"
	leer f
	segun f Hacer
		"s" o "S": escribir n1 + n2 
		"r" o "R": escribir n1 - n2
		"m" o "M": escribir n1 * n2
		"d" o "D": escribir n1 / n2
		De Otro Modo:
			escribir " has igresado valores incorrectos, no se puede resolver"

		
 
	FinSegun
	
	

FinAlgoritmo
