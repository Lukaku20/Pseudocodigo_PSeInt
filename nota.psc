Algoritmo nota123
	//Escriba un programa que pida 3 notas y valide si esas notas están entre 1 y 10. Si están
	//entre esos parámetros se debe poner en verdadero una variable de tipo lógico y si no
	//ponerla en falso. Al final el programa debe decir si las 3 notas son correctas usando la
	//variable de tipo lógico.
	
	Definir nota1, nota2, nota3 Como entero
	Definir nota como logico
	leer nota1
	leer nota2
	leer nota3
	nota = (nota1>=1 y nota1<=10) y (nota2>=1 y nota2<=10) y (nota3>=1 y nota3<=10)  	

	Si nota = verdadero Entonces
		escribir nota 
	SiNo
		escribir nota
	FinSi
FinAlgoritmo
