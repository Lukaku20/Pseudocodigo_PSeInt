Algoritmo finGuia2
	//Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
	//m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar nuestro
	//usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.
	
//Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es correcta
	//haremos que una variable llamada Login sea verdadera.
	//Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
	//Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
//Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men� de
	//opciones: "Ingresar botellas", "Consultar saldo" y "Salir"
//Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. Una vez
//que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando cada botella. En
	//cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr, que va a ser el
	//peso de las botellas a reciclar (simulando que el usuario est� ingresando botellas en la
	//m�quina). Una vez generado, seg�n el peso del material, usaremos un condicional m�ltiple
	//para asignarle un valor monetario:
	//Si es menos de 500 gr, corresponden $50
	//Si es entre 501 gr y 1500 gr, corresponden $125
	//Si es m�s de 1501 gr, corresponden $200
	//Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si el
	//usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (s�lo mostrar en
	//pantalla "Devolviendo material"). Para esto usaremos un condicional doble.
	
	Definir usuario, contrasena, opciones, respuesta como caracter
	Definir login Como Logico
	Definir intentos, botellas, contador, cuenta Como Entero
	Definir gramosPorBotella, saldo como entero
	
	gramosPorBotella = 0
	intentos = 3
		saldo = 0
	cuenta = 0
	Escribir ' Ingresa tu usuario ' 
	leer usuario
	Si usuario = 'Albus_D' Entonces
		Mientras intentos > 0 y usuario <> ' ' 
			intentos = intentos - 1
			escribir ' Ingresa ahora tu contrasena'
			leer contrasena
			Si contrasena = 'caramelosDeLimon'
				login = Verdadero
			SiNo
				login = Falso
			FinSi
				Escribir 'El logueo dio como resultado ' login
			Si login = verdadero Entonces
			hacer
			Escribir ' Has ingresado al men�, que deseas hacer'
			Escribir ' A. INGRESAR BOTELLAS'
			Escribir ' B. CONSULTAR SALDO'
			Escribir ' C. SALIR' 
			Leer opciones
			opciones = Mayusculas(opciones)
			Segun opciones hacer
				'A': Escribir '�Cu�ntas botellas deseas reciclar?'
					leer botellas
					para contador = 1 hasta botellas Con Paso 1 Hacer
						gramosPorBotella = aleatorio(100, 3000)
						SI gramosPorBotella<=500 Entonces
							saldo=saldo+50
						FinSi
						Si gramosPorBotella>=501 y gramosPorBotella<=1500 Entonces
							saldo=saldo+125
						FinSi
						Si gramosPorBotella>=1501 Entonces
							saldo=saldo+200
						FinSi
							
					FinPara
					Escribir 'Tu saldo es $' saldo, ', �deseas aceptarlo?'
					Leer respuesta
					respuesta = Minusculas(respuesta)
					Si respuesta = 'si' Entonces
						cuenta = cuenta + saldo
					SiNo
						Escribir 'Le devolvemos el material'
					FinSi
				'B': Escribir 'Tu saldo es de $' cuenta
				'C': Escribir 'Estamos cerrando' 
					login = falso
					intentos = 0
			FinSegun
			Mientras que login = Verdadero 
			FinSi
		FinMientras
	SiNo
		login = Falso
	FinSi
	

	
FinAlgoritmo
