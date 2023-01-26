//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que 
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual. 
//Por ejemplo: 
//	2 7 6 
//	9 5 1 
//	4 3 8 
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un 
//algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que 
//		sea mágica escribir la suma. Además, el programa deberá comprobar que los números 
//		introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la 
//		matriz que no debe superar orden igual a 10
Algoritmo matrizMagica
	Definir matriz, num, i, j, k, suma Como Entero
	Escribir 'Bienvenido al juego de <L a __m a t r i z__m a g i c a a a a a a>'
	Hacer
		Escribir '¿Cuál es el tamaño que desea para la matriz? (no debe superar orden igual a 10)'
		Leer num 
	Mientras que num > 10 
	Dimension matriz(num,num)
	Escribir 'Anota los numeros entre 1 y 9 que formaran la matriz'
	Para i<-0 hasta num-1 hacer
		para j<- 0 hasta num-1 hacer
			hacer
				Escribir 'Coloca un numero para la fila ' i ' coordenada ' j
				Leer matriz(i,j)
				Si matriz(i,j) < 1 o matriz(i,j) > 9
					Escribir 'Vuelva a intentarlo'
				FinSi
			mientras que matriz(i,j) > 9 o matriz(i,j) < 1
		FinPara
	FinPara
	
	
FinAlgoritmo
