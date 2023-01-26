Algoritmo agregaSimboloCadena
	Definir frase, vector, copi,  symbol como cadena
	Definir i, ubi, cont como entero
	Dimension vector(20)
	Dimension copi(20)
	Escribir 'Hola, ingresa la frase que deseas guardar en el vector'
	Leer frase

	para i<-0 hasta 19
		vector(i)=subcadena(frase,i,i)
	FinPara
	cont=0
	Hacer
	escribir 'Ingresa algun simbolo a la cadena'
	leer symbol
	escribir '¿Donde lo pongo?'
	leer ubi
	para i<-0 hasta 19 Hacer
		copi(i)=vector(i)
	FinPara
	para i<-0 hasta 19 Hacer
		Si i=ubi Entonces
			vector(i) = symbol
		SiNo
			si i>ubi Entonces
				vector(i) = copi(i-1)
			FinSi
		FinSi
	FinPara
	cont=cont+1
	para i<-0 hasta 19
		Escribir sin saltar vector(i) ' '
	FinPara
	escribir ' ' 
	
	Mientras que cont<4
//	vector(ubi)=symbol
//	ubi=ubi+1
//	para i<-ubi hasta 19 Hacer
//		vector(i) = copi(i)
//	FinPara
	
FinAlgoritmo
