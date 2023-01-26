Algoritmo condicionalmultiple
//Construir un programa que simule un menú de opciones para realizar las cuatro  operaciones aritméticas básicas (suma, resta, multiplicación y división) 
//con dos valores  numéricos enteros. El usuario, además, debe especificar la operación con el primer  carácter de la operación que desea 
//realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?  o ?m? para la multiplicación y ?D? o ?d? para la división.
	
	
	definir f Como Caracter
	definir n1, n2 Como Real
	escribir " porfavor ingresa el primer valor"
	leer n1
	escribir " Por favor ingresa el segundo valor"
	leer n2
	escribir " por favor selecciona la operación a ejecutar ? s para la suma, r para la resta, m para la multiplicación y d para la división"
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
