
//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//			
//		El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//		de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además,
//		debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era
//		festivo o no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.


Algoritmo explotadisimo
	Definir nombre, dia, turno, festivo Como Caracter
	Definir horas como entero
	
	Escribir 'Ingrese su nombre'; leer nombre
	escribir '¿Qué dia trabajò?¿lunes, martes, miercoles, jueves, viernes, sabado o domingo?'; leer dia
	Escribir '¿En que turno? (diurno o nocturno)'; leer turno
	Escribir '¿Cuántas horas? (no pueden superar las 12)'; leer horas
	Escribir '¿El dia ' dia ' fue festivo?¿si o no?'; leer festivo
	turno = Minusculas(turno)
	festivo = Minusculas(festivo)
	escribir nombre ' por el dia ' dia ', le corresponden $ ' calcularJornal(turno, horas, festivo)
	
FinAlgoritmo

Funcion jornal <- calcularJornal ( turno, horas, festivo)
	definir jornal como real
	Si turno = 'diurno' Entonces
		jornal = horas * 90
		Si festivo = 'si' Entonces
			jornal = jornal * 1.1
		FinSi
	FinSi
	Si turno = 'nocturno' Entonces
		jornal = horas * 125
		si festivo = 'si' Entonces
			jornal = jornal * 1.15
		FinSi
	FinSi
	
	
Fin Funcion
