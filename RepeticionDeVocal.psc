Algoritmo RepeticionDeVocal
//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//	repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
	//Salida: "Habi un vez n brco"
	Definir Frase Como Caracter
	Escribir "Ingrese una frase: "
	Leer Frase
	VocalesRepetidas(Frase)
FinAlgoritmo
SubProceso VocalesRepetidas(Frase)
	Definir i, x, j, k, s, t Como Entero
	Definir f, v Como Caracter
	f=""
	x=0
	j=0
	k=0
	s=0
	t=0
	Frase=Minusculas(Frase)
	para i<-0 Hasta Longitud(Frase)-1 Hacer
		v=Subcadena(Frase,i,i)
		
		Segun v hacer
			"a": x=x+1
				Si x>=2 Entonces
					Escribir Sin Saltar f 
				SiNo
					Escribir Sin Saltar v
					
				FinSi
			"e": j=j+1
				Si j>=2 Entonces
					Escribir Sin Saltar f 
				SiNo
					Escribir Sin Saltar v
					
				FinSi
			"i": k=k+1
				Si k>=2 Entonces
					Escribir Sin Saltar f 
				SiNo
					Escribir Sin Saltar v
					
				FinSi
			"o": s=s+1
				Si s>=2 Entonces
					Escribir Sin Saltar f 
				SiNo
					Escribir Sin Saltar v
					
				FinSi
			"u": t=t+1
				Si t>=2 Entonces
					Escribir Sin Saltar f 
				SiNo
					Escribir Sin Saltar v
					
				FinSi
			De Otro Modo:
				Escribir Sin Saltar v
			
		FinSegun
	FinPara
FinSubProceso
	