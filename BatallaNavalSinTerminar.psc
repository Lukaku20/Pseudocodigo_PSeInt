Algoritmo BatallaNaval
	// Se crea variable que acumule los ataques realizados
	Definir tempAtaque Como Caracter
	Definir portaAvionesM Como Entero
	Definir acorazadoM Como Entero
	Definir lanchaM Como Entero
	Definir totalBarcos Como Entero
	Definir totalBarcosDestruidos Como Entero
	Definir rendir Como Logico
	Definir cancelar Como Logico
	Definir salir Como Logico
	portaAvionesM <- 5
	acorazadoM <- 4
	lanchaM <- 3
	totalBarcos <- 0
	totalBarcosDestruidos <- 0
	tempAtaque <- ''
	Escribir 'Hola, escribe tu nombre'
	Leer nombreUsuario
	Escribir 'hola ',nombreUsuario,' Jugaremos batalla naval, ¿que tan grande quieres el mapa?, ingrese un ejemplo es 8x9, donde 8 es fila y 9 la columna.'
	Leer sizeMap
	nFila <- 0
	// Se asigna el tamaño del mapa
	Para i<-1 Hasta Longitud(sizeMap) Hacer
		Si Subcadena(sizeMap,i,i)='X' O Subcadena(sizeMap,i,i)='x' Entonces
			filas <- Subcadena(sizeMap,0,i-1)
			columnas <- Subcadena(sizeMap,i+1,Longitud(sizeMap))
		FinSi
	FinPara
	// Se crea el mapa
	Para i<-0 Hasta Longitud(filas) Hacer
		Segun Subcadena(filas,i,i)  Hacer
			'0':
				nFila <- nFila*10+0
			'1':
				nFila <- nFila*10+1
			'2':
				nFila <- nFila*10+2
			'3':
				nFila <- nFila*10+3
			'4':
				nFila <- nFila*10+4
			'5':
				nFila <- nFila*10+5
			'6':
				nFila <- nFila*10+6
			'7':
				nFila <- nFila*10+7
			'8':
				nFila <- nFila*10+8
			'9':
				nFila <- nFila*10+9
		FinSegun
	FinPara
	Para i<-1 Hasta Longitud(columnas) Hacer
		Segun Subcadena(columnas,i,i)  Hacer
			'0':
				nColumna <- nColumna*10+0
			'1':
				nColumna <- nColumna*10+1
			'2':
				nColumna <- nColumna*10+2
			'3':
				nColumna <- nColumna*10+3
			'4':
				nColumna <- nColumna*10+4
			'5':
				nColumna <- nColumna*10+5
			'6':
				nColumna <- nColumna*10+6
			'7':
				nColumna <- nColumna*10+7
			'8':
				nColumna <- nColumna*10+8
			'9':
				nColumna <- nColumna*10+9
		FinSegun
	FinPara
	Escribir 'Filas: ',nFila
	Escribir 'Columnas: ',nColumna
	// Se crea el mapa
	Dimension map[nFila,nColumna]
	Dimension mapDisparos[nFila,nColumna]
	// Se inicia en ceros <<0>>
	Para cont<-1 Hasta nFila Hacer
		Para cont2<-1 Hasta nColumna Hacer
			map[cont,cont2]<-'O'
			mapDisparos[cont,cont2]<-'O'
		FinPara
	FinPara
	// Se insertan barcos	
	Escribir ''
	salir <- Falso
	Escribir 'Se agregaran los barcos, seleccionelos:'
	Escribir '¿Desea agregar al Porta Aviones? Escriba 0 para no, cualquier otro valor sera Si'
	Leer opt
	Si opt<>'0' Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(nFila)+1
			columnaAzar <- azar(nColumna)+1
			// Escribir filaAzar, "<- ->", columnaAzar
			Si filaAzar<nFila-5 Y columnaAzar<nColumna-1 Entonces
				// Agregar  portaAviones
				Para i<-filaAzar Hasta filaAzar+5-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+1-1 Hacer
						Si map[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+5-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+1-1 Hacer
							Si map[i,i2]='O' Entonces
								map[i,i2]<-'P'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir 'Porta Aviones agregado'
		totalBarcos <- totalBarcos+1
	SiNo
		Escribir 'No se agrega Porta Aviones'
	FinSi
	salir <- Falso
	Escribir '¿Desea agregar al Acorazado? Escriba 0 para no, cualquier otro valor sera Si'
	Leer opt
	Si opt<>'0' Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(nFila)+1
			columnaAzar <- azar(nColumna)+1
			// Escribir filaAzar, "<- ->", columnaAzar
			Si filaAzar<nFila-2 Y columnaAzar<nColumna-2 Entonces
				// Agregar  acorazado
				Para i<-filaAzar Hasta filaAzar+2-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+2-1 Hacer
						Si map[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+2-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+2-1 Hacer
							Si map[i,i2]='O' Entonces
								map[i,i2]<-'A'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir 'Acorazado agregado'
		totalBarcos <- totalBarcos+1
	SiNo
		Escribir 'No se agrega Acorazado'
	FinSi
	salir <- Falso
	Escribir '¿Desea agregar la Lancha? Escriba 0 para no, cualquier otro valor sera Si'
	Leer opt
	Si opt<>'0' Entonces
		Mientras salir=Falso Hacer
			cancelar <- Falso
			filaAzar <- azar(nFila)+1
			columnaAzar <- azar(nColumna)+1
			// Escribir filaAzar, "<- ->", columnaAzar
			Si filaAzar<nFila-1 Y columnaAzar<nColumna-3 Entonces
				// Agregar  lanza
				Para i<-filaAzar Hasta filaAzar+1-1 Hacer
					Para i2<-columnaAzar Hasta columnaAzar+3-1 Hacer
						Si map[i,i2]<>'O' Entonces
							cancelar <- Verdadero
						FinSi
					FinPara
				FinPara
				Si cancelar=Falso Entonces
					Para i<-filaAzar Hasta filaAzar+1-1 Hacer
						Para i2<-columnaAzar Hasta columnaAzar+3-1 Hacer
							Si map[i,i2]='O' Entonces
								map[i,i2]<-'L'
								salir <- Verdadero
							FinSi
						FinPara
					FinPara
				FinSi
			FinSi
		FinMientras
		Escribir 'Lancha agregada'
		totalBarcos <- totalBarcos+1
	SiNo
		Escribir 'No se agrega Lancha'
	FinSi
	Escribir 'Presione Enter para continuar'
	Leer enter
	Borrar Pantalla
	Escribir nombreUsuario,', el mapa se creó correctamente, los barcos fueron ubicados'
	Escribir ''
	Escribir 'Presiona Enter para iniciar el juego, usa el siguiente formato 4x6, donde 4 es la fila y 6 la columna'
	Escribir 'Ten en cuenta que si te quieres rendir, en vez de digitar coordenadas, solo digita la letra R y envias'
	Escribir 'Si quieres ver el mapa original, envias una M mayuscula'
	Definir ganar Como Logico
	ganar <- Falso
	Mientras ganar=Falso Hacer
		nFilaDisparar <- 0
		nColumnaDisparar <- 0
		Leer disparo
		Si disparo='' Entonces
			disparo <- '1000x1000'
		FinSi
		Si disparo='R' Entonces
			ganar <- Verdadero
			rendir <- Verdadero
		FinSi
		Si ganar<>Verdadero Entonces
			Si disparo='M' Entonces
				Escribir 'Mostrando mapa'
				// Se imprime mapa
				Para cont<-1 Hasta nFila Hacer
					Para cont2<-1 Hasta nColumna Hacer
						mapTemp <- mapTemp+map[cont,cont2]+'  '
					FinPara
					Escribir mapTemp
					mapTemp <- ''
				FinPara
				Escribir 'Escribe de nuevo las coordenadas'
				Leer disparo
			FinSi
			Para i<-0 Hasta Longitud(disparo) Hacer
				Si Subcadena(disparo,i,i)='X' O Subcadena(disparo,i,i)='x' Entonces
					filaDisparar <- Subcadena(disparo,0,i-1)
					columnaDisparar <- Subcadena(disparo,i+1,Longitud(disparo))
				FinSi
			FinPara
			// Se crea el mapa
			Para i<-0 Hasta Longitud(filaDisparar) Hacer
				Segun Subcadena(filaDisparar,i,i)  Hacer
					'0':
						nFilaDisparar <- nFilaDisparar*10+0
					'1':
						nFilaDisparar <- nFilaDisparar*10+1
					'2':
						nFilaDisparar <- nFilaDisparar*10+2
					'3':
						nFilaDisparar <- nFilaDisparar*10+3
					'4':
						nFilaDisparar <- nFilaDisparar*10+4
					'5':
						nFilaDisparar <- nFilaDisparar*10+5
					'6':
						nFilaDisparar <- nFilaDisparar*10+6
					'7':
						nFilaDisparar <- nFilaDisparar*10+7
					'8':
						nFilaDisparar <- nFilaDisparar*10+8
					'9':
						nFilaDisparar <- nFilaDisparar*10+9
				FinSegun
			FinPara
			Para i<-0 Hasta Longitud(columnaDisparar) Hacer
				Segun Subcadena(columnaDisparar,i,i)  Hacer
					'0':
						nColumnaDisparar <- nColumnaDisparar*10+0
					'1':
						nColumnaDisparar <- nColumnaDisparar*10+1
					'2':
						nColumnaDisparar <- nColumnaDisparar*10+2
					'3':
						nColumnaDisparar <- nColumnaDisparar*10+3
					'4':
						nColumnaDisparar <- nColumnaDisparar*10+4
					'5':
						nColumnaDisparar <- nColumnaDisparar*10+5
					'6':
						nColumnaDisparar <- nColumnaDisparar*10+6
					'7':
						nColumnaDisparar <- nColumnaDisparar*10+7
					'8':
						nColumnaDisparar <- nColumnaDisparar*10+8
					'9':
						nColumnaDisparar <- nColumnaDisparar*10+9
				FinSegun
			FinPara
			Borrar Pantalla
			Si nFilaDisparar<>1000 Y nColumnaDisparar<>1000 Entonces
				tempAtaque <- Concatenar(tempAtaque,Concatenar('(',Concatenar(ConvertirATexto(nFilaDisparar),Concatenar(',',Concatenar(ConvertirATexto(nColumnaDisparar),')')))))
				Escribir 'A disparar en coordenadas: Fila: ',nFilaDisparar,', Columna: ',nColumnaDisparar
			SiNo
				Escribir 'A disparar en coordenadas: Fila: ','oo',', Columna: ','oo'
			FinSi
			Escribir 'Has destruido '+ConvertirATexto(totalBarcosDestruidos)+' barco/s de '+ConvertirATexto(totalBarcos)
			Si nFilaDisparar<=nFila Y nColumnaDisparar<=nColumna Entonces
				Si map[nFilaDisparar,nColumnaDisparar]=mapDisparos[nFilaDisparar,nColumnaDisparar] Entonces
					mensajeAtaque <- 'Disparo en el agua'
					mapDisparos[nFilaDisparar,nColumnaDisparar]<-'/'
				SiNo
					Segun map[nFilaDisparar,nColumnaDisparar]  Hacer
						'P':
							Si mapDisparos[nFilaDisparar,nColumnaDisparar]<>'*' Y mapDisparos[nFilaDisparar,nColumnaDisparar]<>'/' Entonces
								mapDisparos[nFilaDisparar,nColumnaDisparar]<-'*'
								portaAvionesM <- portaAvionesM-1
								Si portaAvionesM=0 Entonces
									mensajeAtaque <- 'Has hundido el barco Porta Aviones, Felicitaciones!!!, Presiona Enter para actualizar estadisticas.'
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- 'Ataco a Porta Aviones'
								FinSi
							SiNo
								mensajeAtaque <- 'Ya atacaste este punto'
							FinSi
						'A':
							Si mapDisparos[nFilaDisparar,nColumnaDisparar]<>'*' Y mapDisparos[nFilaDisparar,nColumnaDisparar]<>'/' Entonces
								mapDisparos[nFilaDisparar,nColumnaDisparar]<-'*'
								acorazadoM <- acorazadoM-1
								Si acorazadoM=0 Entonces
									mensajeAtaque <- 'Has hundido el barco Acorazado, Felicitaciones!!!, Presiona Enter para actualizar estadisticas'
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- 'Ataco a Acorazado'
								FinSi
							SiNo
								mensajeAtaque <- 'Ya atacaste este punto'
							FinSi
						'L':
							Si mapDisparos[nFilaDisparar,nColumnaDisparar]<>'*' Y mapDisparos[nFilaDisparar,nColumnaDisparar]<>'/' Entonces
								mapDisparos[nFilaDisparar,nColumnaDisparar]<-'*'
								lanchaM <- lanchaM-1
								Si lanchaM=0 Entonces
									mensajeAtaque <- 'Has hundido el barco Lancha, Felicitaciones!!!, Presiona Enter para actualizar estadisticas'
									totalBarcosDestruidos <- totalBarcosDestruidos+1
								SiNo
									mensajeAtaque <- 'Ataco a Lancha'
								FinSi
							SiNo
								mensajeAtaque <- 'Ya atacaste este punto'
							FinSi
						'O':
						De Otro Modo:
							mensajeAtaque <- '¿Error? verifica coordenadas de nuevo, ejemplo 5x6'
					FinSegun
				FinSi
			SiNo
				Si nFilaDisparar<>1000 Y nColumnaDisparar<>1000 Entonces
					mensajeAtaque <- 'Atacó fuera del mapa.'
				SiNo
					mensajeAtaque <- 'Enter presionado, digite coordenadas, ejemplo FILAxCOLUMNA.'
				FinSi
			FinSi
			Escribir ''
			Si lanchaM=0 Entonces
				Escribir 'Has hundido el barco Lancha, Felicitaciones!!!'
			FinSi
			Si acorazadoM=0 Entonces
				Escribir 'Has hundido el barco Acorazado, Felicitaciones!!!'
			FinSi
			Si portaAvionesM=0 Entonces
				Escribir 'Has hundido el barco Porta Aviones, Felicitaciones!!!'
			FinSi
			Escribir ''
			Escribir tempAtaque
			Escribir ''
			// Se imprime mapa disparos
			titleTemp <- ''
			Para cont<-1 Hasta nFila Hacer
				Para cont2<-1 Hasta nColumna Hacer
					mapTemp <- mapTemp+mapDisparos[cont,cont2]+'  '
					Si Longitud(ConvertirATexto(cont2))>1 Entonces
						titleTemp <- titleTemp+ConvertirATexto(cont2)+' '
					SiNo
						titleTemp <- titleTemp+ConvertirATexto(cont2)+'  '
					FinSi
				FinPara
				Si cont=1 Entonces
					Escribir Concatenar('     ',titleTemp)
					Escribir ''
				FinSi
				Si Longitud(ConvertirATexto(cont))>1 Entonces
					Escribir Concatenar(Concatenar(ConvertirATexto(cont),'   '),mapTemp)
				SiNo
					Escribir Concatenar(Concatenar(ConvertirATexto(cont),'    '),mapTemp)
				FinSi
				mapTemp <- ''
			FinPara
			Escribir ''
			Si totalBarcos=totalBarcosDestruidos Entonces
				ganar <- Verdadero
				Escribir ''
				Escribir '¡¡HAS GANADO, FELICITACIONES!!'
				Escribir ''
				Escribir 'Has hundido todos los barcos, tus estadisticas son:'
				Escribir 'Barcos hundidos: '+ConvertirATexto(totalBarcosDestruidos)
				Leer temp
			SiNo
				Escribir mensajeAtaque
			FinSi
			Si rendir=Verdadero Entonces
				Escribir 'Te has rendido, no veras las estadisticas que tenias hasta el momento, suerte.'
			FinSi
		FinSi
	FinMientras
FinAlgoritmo