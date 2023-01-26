Algoritmo sin_titulo
	Definir num, num3, num4 Como Entero;
	Escribir "Ingrese numero"
	Leer num;
	Escribir "El numero " num "" capicua(num);
FinAlgoritmo
Funcion capi <- capicua (num)
	Definir capi Como caracter;
	Definir num1, num2, num3, num4, contador, i como real;
	Definir login como logico;
	num3= 1;
	num4= 10;
	login= verdadero;
	num1= num;
	contador= -1;
    Mientras login= verdadero Hacer
		num2= num1 mod 10;
		num3= num1 / 10;
		num3= trunc(num3);
		si num1 < 100 Entonces
			contador= contador + 1;
			num1= trunc(num1);
		FinSi
		mientras num1 > 10 hacer
			contador= contador + 1;
			num1 = num1 / 10;
			num1= trunc(num1);
		finmientras;
		si num1 <> num2 Entonces
			login= falso;
			capi= " no es capicua";
		SiNo
			si num = num2 Entonces
				capi=" es un numero capicua";
				login= falso;
			FinSi
		FinSi;
		si login= Verdadero entonces
		num1= num3;
		num= num1 mod 10;
		finsi;
	    si login = Verdadero y num < 10 y num1 > 100 Entonces
			para i <- 2 Hasta contador Hacer
				num4= num4 * 10
				num= num1 mod num4;
			FinPara;
			num1= num;
	    SiNo
			si login <> Falso entonces
				num= num1 mod num4;
				num1= num;
			FinSi;
		finsi;
		num4= 10;
		contador= -1;
	FinMientras;
FinFuncion
