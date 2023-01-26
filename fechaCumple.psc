Algoritmo fechaCumple
	//Leer tres números que denoten una fecha (día, mes, año) y comprobar que sea una fecha
	//válida. Si la fecha no es válida escribir un mensaje de error por pantalla. Si la fecha es
	//válida se debe imprimir la fecha cambiando el número que representa el mes por su
	//nombre. Por ejemplo: si se introduce 1 2 2006, se deberá imprimir "1 de febrero de 2006".
	
	Definir d, m, a Como Entero
	Definir fecha como caracter
	Escribir ' Ingresa la fecha de tu nacimiento numerico. Primero el día, luego mes y al final, el año' 
	leer d, m, a
	Si (d >= 1 y d <= 31) y ( m >=1 y m <= 12) y (a >= 1900 y a <= 2022) Entonces
		Escribir ' La fecha es válida' 
	sino 
		escribir 'Error la fecha es inválida'
	FinSi
	Segun m hacer
		1: escribir d,' de enero de ',  a
		2: escribir d, ' de febrero de ' a
		3: escribir d, ' de marzo de ' a
		4: escribir d, ' de abril de ' a
		5: escribir d, ' de mayo de ' a
		6: escribir d, ' de junio de ' a
		7: escribir d, ' de julio de ' a
		8: escribir d, ' de agosto de ' a
		9: escribir d, ' de setiembre de ' a
		10: escribir d, ' de octubre de ' a
		11: escribir d, ' de noviembre de ' a
		12: escribir d, ' de diciembre de ' a
	FinSegun
	
FinAlgoritmo
