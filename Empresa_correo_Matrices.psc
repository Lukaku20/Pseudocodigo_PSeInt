//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.

Algoritmo Empresa_correo_Matrices
	
	Definir tabla, i, j, semana, producto, pmasvendido, opc, pro, totalsemana Como Entero
	Dimension tabla(5,5), totalsemana(5)
	
	para i=0 hasta 4
		para j=0 hasta 4
			
			escribir "indique la cantidad vendida del producto ",i+1 " en el dia " j+1
			leer tabla(i,j)
			
		FinPara
	FinPara
	
	para i=0 hasta 4
		para j=0 hasta 4
			
			escribir tabla(i,j) " " Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
	
	Escribir "1-Total de ventas dia"
	Escribir "2-Total de ventas de la semana"
	Escribir "3-Producto mas vendido en el dia"
	
	
	Escribir "Elija una opción"
	leer opc
	
	segun opc
		
		1: 
			
			para i=0 hasta 4
				producto=0
				para j=0 hasta 4
					
					producto=producto+tabla(j,i)
					
				FinPara
				Escribir "el total de la venta del dia ", i+1 " es ",producto 
			FinPara
			
			
		2:
			para i=0 hasta 4
				producto=0
				para j=0 hasta 4
					
					producto=producto+tabla(i,j)
					
				FinPara
				totalsemana(i)=producto
				Escribir "el total del producto ", i+1 " en la semana es ",producto 
			FinPara
			
			
		3: 
			para i=0 hasta 4
				producto=0
				para j=0 hasta 4
					
					producto=producto+tabla(i,j)
					
				FinPara
				totalsemana(i)=producto
				
			FinPara
				producto=0
				
				para j=0 hasta 4
					
					si producto<totalsemana(j)
						
						producto=totalsemana(j)
						pro=j
						
					finsi
				
				FinPara
				Escribir "la mayor venta de la semana fue: ", producto " del producto " ,pro+1
					
	
	FinSegun
	
	
	
	
FinAlgoritmo
