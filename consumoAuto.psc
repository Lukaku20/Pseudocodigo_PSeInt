Algoritmo consumoAuto
	//La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
	//de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
	//de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
	//regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
	//cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
	//40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
	//de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y el
	//total a pagar por el cliente.
	Definir horasDeUso, minutosDeUso Como Real
	Definir litros como entero
	
	Escribir 'Usted cuantas horas uso el auto'
	leer horasDeUso
	Si (horasDeUso <= 2) entonces
		Escribir 'Usted debe abonar $400'
	SiNo
		Si (horasDeUso > 2) Entonces
			Escribir 'Cuantos minutos uso el auto exactamente'
			leer minutosDeUso
			Escribir 'Cuantos litros de combustible consumió'
			leer litros
			minutosDeUso = minutosDeUso * 5.20
			litros = litros * 40
			Escribir 'Usted debe abonar $ ', (minutosDeUso + litros)
		FinSi
	FinSi
FinAlgoritmo
