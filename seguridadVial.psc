Algoritmo seguridadVial
	Definir semaforo, i , aciertos, errores Como Entero
	Definir avanzar, detenerse, reducir como entero
	Definir usuarioDecide, calles Como Caracter
	
	Dimension calles(6)
	aciertos = 0
	errores = 0
	i = 1
	avanzar = 1
	detenerse = 3
	reducir = 2
	calles(0) = 'Mitre'
	calles(1) = 'Las Heras'
	calles(2) = '25 de mayo'
	calles(3) = 'Espejo'
	calles(4) = 'Belgrano'
	calles(5) = 'Gutierrez'
	Para i = 0 hasta 5 con paso 1 hacer		
		semaforo <- azar ( 3 ) + 1
		esperar 2 segundos
		Escribir 'Vas hacia calle ' calles(i) ' , atención.'
		Escribir sin saltar 'Has llegado al semaforo, esta en '
		Segun semaforo hacer
			1: escribir 'Verde' 
			2: escribir 'Amarillo' 
			3: escribir 'Rojo' 
		FinSegun
		Escribir ' ' 
		Si semaforo = avanzar entonces
			esperar 1 segundo
			Escribir 'Bien, podrías avanzar con el vehículo, ¿Qué decides?'
			Leer usuarioDecide
			usuarioDecide = 'avanzar'
			Escribir 'Sigue adelante hasta la siguiente calle'
			aciertos = aciertos + 1
		SiNo
			esperar 1 segundo
				Escribir 'Debes detener el vehículo y esperar que el semáforo cambie a verde, ¿Que decides?'
				leer usuarioDecide
				Si usuarioDecide = 'frenar'
					Escribir 'Muy bien, te detuviste, luego de que el semáforo cambie podrás continuar'
					aciertos = aciertos + 1
				SiNo
					esperar 2 segundos
					Si usuarioDecide <> 'frenar'
						escribir 'Siempre debes detenerte cuando el semáforo se encuentre en amarillo o rojo'
						errores = errores + 1
						i = i - 1
						FIn si
				FinSi
			FinSi
		Fin Para
		esperar 2 segundos
	Escribir 'Excelente has llegado. Sumaste : ' aciertos ' aciertos, ' errores ' errores. Sigue practicando'
	Escribir 'Siempre recuerda que debes respetar los colores del semáforo'
	Escribir '¡Felicitaciones!'

FinAlgoritmo
