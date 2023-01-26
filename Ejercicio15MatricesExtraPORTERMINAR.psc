//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
//El informe final tendrá un formato como el que se muestra a continuación:



	
Algoritmo tienda
	Definir  i,j, dx, dy Como Entero
	Definir  Matriz,vec1,vec2 Como Caracter
	dx = 7
	dy = 8
	Dimension  vec1[dx]
	Dimension  vec2[dy]
	Dimension  Matriz[dy,dx]
	//linea principal
	vec1[0] = "          "
	vec1[1] = "Lunes"
	vec1[2] = "Martes"
	vec1[3] = "Miercoles"
	vec1[4] = "Jueves"
	vec1[5] = "Viernes"
	vec1[6] = "TotalProducto"
	//
	vec2[0] = vec1[0]
	vec2[1] = "Producto 1" 
    vec2[2] = "Producto 2"
	vec2[3] = "Producto 3"
	vec2[4] = "Producto 4"
	vec2[5] = "Producto 5"
	vec2[6] = "Total semana"
	vec2[7] = "Producto más vendido"
	
	



	
	 llenarTabla(Matriz,vec1,vec2,dx,dy)
	 mostrarTabla(Matriz,dx,dy)
	
FinAlgoritmo

funcion mostrarTabla(matriz,dx,dy)
	Definir  i,j Como Entero
	para i <- 0 hasta dy - 1 hacer
		Para  j <- 0 Hasta dx - 1 Hacer
			escribir Sin Saltar " ", matriz[i,j]
		FinPara
		escribir " "
	FinPara
FinFuncion


// codigo llenado de tabla
Funcion  llenarTabla(matriz Por Referencia,vector1,vector2,dx,dy)
	Definir  i,j Como Entero
	para i <- 0 hasta dy - 1 hacer
		
	
		
		si i == 0 Entonces
			
			Para  j <- 0 Hasta dx - 1 Hacer
				matriz[i,j] = vector1[j]
				si j == 0 Entonces
					matriz[i,j] = vector2[i]
				FinSi
			FinPara
			
		SiNo
			
			Para  j <-  0 Hasta dx - 1 Hacer
				matriz[i,j] = "  nulo  "
				si j == 0 Entonces
					matriz[i,j] = vector2[i]
				FinSi
			FinPara
			
		FinSi
		
	FinPara
FinFuncion



	