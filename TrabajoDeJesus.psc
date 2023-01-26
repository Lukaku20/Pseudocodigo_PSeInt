Algoritmo TrabajoDeJesus
	Definir user, password Como Caracter
	Definir login1, login2 Como Logico
	Definir i Como Entero
	login1 = FALSO
	i = 1
	Repetir
		Escribir "Ingrese usuario y contraseña :)"
		Leer user, password
	Si user = "Empresa1" y password = "123" entonces
		login1 = Verdadero
		Escribir "Ha ingresado correctamente!"
	SiNo
		Escribir "Intentelo denuevo!, te quedan ",3 - i " intentos"
	FinSi
	i = i + 1
Mientras Que login1 = FALSO Y i <= 3

	
	
	
	
FinAlgoritmo


