Algoritmo sueldosEmp
	//Una empresa tiene personal de distintas �reas con distintas condiciones de contrataci�n y
	//formas de pago. El departamento de contabilidad necesita calcular los sueldos semanales
    //lunes a viernes) en base a las 3 modalidades de sueldo:
	//a) comisi�n
	//b) salario fijo + comisi�n, y
	//c) salario fijo
	//a) Para la modalidad salario por comisi�n se debe ingresar el monto total de las ventas
	//realizadas en la semana, y el 40% de ese monto total corresponde al salario del
	//empleado.
	//b) Para la condici�n de salario fijo + comisi�n, se debe ingresar el valor que se paga por
	//hora, la cantidad de horas trabajadas semanalmente y el monto total de las ventas en
	//esa semana. En este tipo de contrato las horas extras no est�n contempladas y se fija
	//como m�ximo 40 horas por semana. La comisi�n por las ventas se calcula como 25%
	//del valor de venta total.
	//c) Finalmente, para la modalidad de salario fijo se debe ingresar el valor que se paga por
	//hora y la cantidad de horas trabajadas en la semana. En el caso de exceder las 40
	//horas semanales, las horas extras se deben pagar con un extra del 50% del valor de la
	//hora. Realizar un men� de opciones para poder elegir el tipo de contrato que tiene un
	//empleado.
	Definir comision, salarioFijoMasCom, salarioFijo como real
	definir tipoDeContrato Como Caracter
	definir horas Como Entero
	Escribir 'Qu� tipo de contrato tienes: a, b o c. '
	leer tipoDeContrato
	Segun tipoDeContrato Hacer
		"a": escribir 'Cual es el dinero total de las ventas en la semana'
			leer comision
			comision = (comision *40) / 100
			escribir 'tu sueldo es de $ ', comision
		"b":Escribir '�Cuanto te pagan por hora?'
			leer horas
			Escribir 'Cuantas horas trabajaste esta semana, no puede superar 40hs. '
			leer salarioFijoMasCom
			escribir 'Cuanto vendiste'
			leer comision
			si salarioFijoMasCom <= 40
				Escribir 'Tu sueldo es $ ', salarioFijoMasCom*horas + (comision*25)/100
			SiNo
				escribir 'Tu sueldo es $ ', horas*40 + (comision*25)/100
			FinSi
		"c":Escribir '�Cuanto te pagan por hora?'
			leer horas
			Escribir 'Ingrese la cantidad de horas trabajadas'
			leer salarioFijo
			Si salarioFijo <= 40 entonces
				Escribir 'Tu sueldo es $ ', salarioFijo*horas
			sino
				Escribir 'Tu sueldo es $ ', 40*horas + (salarioFijo - 40) * (horas*0.5)
			FinSi
	FinSegun
		
FinAlgoritmo
