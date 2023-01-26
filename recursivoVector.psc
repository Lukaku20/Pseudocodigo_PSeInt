///Programe una función recursiva que calcule la suma de un arreglo de números enteros. 
Algoritmo recusivoVector
	Definir vector, i, k Como Entero
	Dimension vector(10)
	para i<-0 hasta 9 Hacer
		vector(i)=azar(20)
		Escribir sin saltar vector(i) ' , '
	FinPara
	escribir ' '
	k=9
	escribir sumaRecursiva(vector,k)
FinAlgoritmo
funcion sumatotal<-sumaRecursiva(vector,k)
	definir sumatotal, sum, sum2 como entero
	Si k = 0 Entonces
		sum=vector(0)
	SiNo
		sum2=sumaRecursiva(vector,k-1)
		sum=sum2+vector(k)
	FinSi
	sumatotal=sum
FinFuncion
