Algoritmo notasDificiles
//Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus 
//N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una 
//Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves 
//de sus estudiantes:
//Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante 
//reprueba el curso si tiene una nota final inferior a 6.5
//Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//La mayor nota obtenida en las exposiciones. 
//Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá 
//las 3 notas y calculará todos informes claves que requiere el docente. 
	Definir not1, not2, not3 como real
	Definir notaFinal como real
	Definir notMay, totalEst Como Real
	Definir cont como entero 
	Definir desap, cont2, cont3, cont4 como real
	
	cont = 0
	cont2 = 0
	cont3 = 0
	cont4 = 0
	not1 = 0 
	not2 = 0 
	not3 = 0
	notaFinal = 0 
	notMay = 0
	totalEst = 0
	desap = 0
	Escribir 'Ingrese el numero de alumnos evaluados'
	leer totalEst
	Para cont <- 1 hasta totalEst Con Paso 1 hacer 
		Escribir 'Ingrese las notas del alumno ", cont 
		Escribir ' nota del T.P: integrador'
		leer  not1
		Escribir ' nota de la exposición'
		leer not2
		escribir ' nota del parcial '
		leer not3 
		notaFinal = (not1*0.35) + (not2 * 0.25) + (not3 * 0.4)
		escribir 'El promedio de la nota del alumno ', cont  ' es ' notaFinal 
		Si notaFinal < 6.5 Entonces
			Escribir 'El alumno desaprobo'
			desap = desap + notaFinal
			cont2 = cont2 + 1
		FinSi
		Si not1 >= 7.5 Entonces
			Escribir 'El alumno obtuvo una nota en el integrador mayor o igual a 7.5'
			cont3 = cont3 + 1
		FinSi
		Si not2 > notMay Entonces
			notMay = not2
		FinSi
		Si not3 >= 4 y not3 <= 7.5 Entonces
			cont4 = cont4 + 1
		FinSi
	FinPara
	Escribir ' El informe final es: '
	Si desap >= 1 entonces
		Escribir 'La nota promedio de los estudiantes desaprobados fue de ', (desap/cont2) 
	SiNo
		escribir ' No hubo alumnos desaprobados'
	FinSi
	
	Escribir ' El porcentaje de alumnos que tuvo una nota en el integrador mayor a 7.5 fue de ',trunc((cont3*100)/totalEst) ' %'
	Escribir ' La nota más alta de las exposiciones fue ', notMay '.'
	Escribir ' El total de estudiantes que sacaron entre 4 y 7.5 en el parcial fue de ' cont4
	
	
	
	

FinAlgoritmo
