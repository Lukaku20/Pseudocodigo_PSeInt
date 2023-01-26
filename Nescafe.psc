//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.


Algoritmo Nescafe
	
	Definir tabla, vendedor, ventaszona, i, j, totalventas, totalvendedor, grantotal, opc Como Entero
	
	Dimension tabla(4,5)
	
	para i=0 hasta 3
		para j=0 hasta 4
			
			tabla(i,j)=Aleatorio(1,100)
			
		FinPara
	FinPara
	
	para i=0 hasta 3
		para j=0 hasta 4
			
			Escribir tabla(i,j) "  " sin saltar
			
		FinPara
		Escribir ""
	FinPara
	
	
	escribir "elija la opcion deseada"
	
	escribir "1- el total de ventas de una zona"
	escribir "2- el total de ventas de un vendedor"
	escribir "3- el total de ventas de todos los representantes"
	
	leer opc
	segun opc Hacer
		
		
		1: escribir "Indique la zona que desea"
			leer j
			ventaszona=0
			para i=0 hasta 3
			
			ventaszona=ventaszona+tabla(i,j)

			FinPara
		Escribir "Las ventas totales de la zona " ,j " fueron: $",ventaszona
			
		2:escribir "Indique el vendedor"
			leer i
			vendedor=0
			para j=0 hasta 4
				
				vendedor=vendedor+tabla(i,j)               
				
			FinPara
			Escribir "Las ventas totales del vendedor " ,i " fueron: $",vendedor

			
		3: 
			totalventas=0
			para i=0 hasta 3
				para j=0 hasta 4
					
					totalventas=totalventas+tabla(i,j)
					
				FinPara
			FinPara
		Escribir "el total de ventas de todo el equipo fue: $" ,totalventas
	FinSegun
	
FinAlgoritmo
