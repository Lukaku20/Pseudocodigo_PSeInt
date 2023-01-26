Algoritmo numerosPares
	//Solicitar al usuario que ingrese dos números enteros y determinar si ambos son pares o
	//impares. Mostrar en pantalla un mensaje que indique "Ambos números son pares" siempre
	//y cuando cumplan con la condición. En caso contrario se deberá imprimir el siguiente
	//mensaje "Los números no son pares, o uno de ellos no es par".
	Definir num1 , num2 Como Entero
	definir condicion Como Logico
	
	Escribir 'Ingrese dos numeros enteros, para determinar si son pares o no'
	leer num1, num2
	condicion = ((num1 mod 2)=0 y (num2 mod 2) =0) 
	si condicion = verdadero Entonces
		Escribir 'Ambos numeros son pares'
	SiNo
		escribir 'Los números no son pares, o uno de ellos no es par'
		
	FinSi
FinAlgoritmo
