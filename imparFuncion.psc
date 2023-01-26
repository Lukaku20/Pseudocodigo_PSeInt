
Funcion resultado <- impar ( num )
	definir resultado Como Logico
	resultado = num mod 2 = 1
Fin Funcion

Algoritmo imparFuncion
	definir num Como Entero
	escribir "escriba un numero"
	leer num
	escribir "el resultado del numero es " impar(num)
FinAlgoritmo


