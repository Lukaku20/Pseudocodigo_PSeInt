Algoritmo ejercicio_cooperativo_correjido
	Definir login Como Logico
	Definir user, contra, respuesta, retiro Como Caracter
	Definir intentos, b Como Entero
	Definir peso, saldo, cuenta, botellas Como Real
	saldo=0
	peso=0
	cuenta=0
	Escribir "Ingrese el usuario"
	Leer user
	intentos=3
	contra=""
	Si user="Albus_D" Entonces
		
		Mientras contra<>"caramelosDeLimon" y intentos>0 Hacer
			
			Escribir "Ingrese la contraseña, le quedan ", intentos," intentos"
			Leer contra
			intentos=intentos-1
			Si contra="caramelosDeLimon" Entonces
				login=Verdadero
			FinSi
			
		FinMientras
		Escribir"El login es ", login
		Hacer
			Escribir "Que desea hacer?"
			Escribir "Opcion A: Ingresar Botellas"
			Escribir "Opcion B: Consultar Saldo"
			Escribir "Opcion C: Salir"
			Leer respuesta
			Segun respuesta Hacer
				"A":
					Escribir "Ingrese la cantidad de botellas"
					Leer botellas
					Para b<-1 Hasta botellas Hacer
						peso=Aleatorio(100,3000)
						SI peso<=500 Entonces
							saldo=saldo+50
						FinSi
						Si peso>=501 y peso<=1500 Entonces
							saldo=saldo+125
						FinSi
						Si peso>=1501 Entonces
							saldo=saldo+200
						FinSi
					FinPara
					Escribir "Recibiras ", saldo," pesos, desea retirar el dinero que se le devuelvan las botellas?"
					Leer retiro
					Si retiro="Si" Entonces
						cuenta=saldo+cuenta
						Escribir "Retire su dinero"
					SiNo
						Escribir "Devolviendo material"
					FinSi
				"B":
					Escribir "Su saldo es de: ", cuenta
				"C":
					login=Falso
					
			FinSegun
			
		Mientras Que login=Verdadero
		
	SiNo
		Escribir "El usuario es incorrecto" 
		login=Falso
	FinSi
	
	

	
	
	
FinAlgoritmo
