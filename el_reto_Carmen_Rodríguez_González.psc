Algoritmo el_reto_Carmen_Rodríguez_González
	Escribir "Entrada: "
	Leer n
	
	cont<- 0
	aux<- n
	Mientras aux>0 Hacer
		aux<- trunc(aux/10)
		cont<- cont+1
	FinMientras
	aux<- n
	
	Dimensión digito[100000000]
	Para i<- 1 Hasta cont  Hacer
		pot <- 10^(cont-i)
		digito[i]<- trunc(aux/pot)
		aux<- aux-digito[i]*pot
	Fin Para
acum<-0
	Para i<-1  Hasta cont Con Paso 1 Hacer
		acum<- acum+digito[i]
	Fin Para
	
	Escribir "Salida:"
	
	Para i<-1 Hasta cont-1 Con Paso 1 Hacer
		Escribir digito[i] " + " Sin Saltar
	Fin Para
	
	Escribir digito(cont) " = " acum

FinAlgoritmo
