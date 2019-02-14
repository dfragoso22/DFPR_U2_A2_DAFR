//AUTOR: Daniel Eleazar Fragoso Reyes
//Fecha: Febrero 14, 2019
//Universidad Abierta y a Distancia de México
//Facilitadora: Rita Flores Asis
//Asignatura: Fundamentos de Programación - Unidad 1 - Actividad 2
// Algoritmo para limpiar una cuadra, por facilidad usaremos matrices en base 1, ya que PSeInt ya viene así por default
Algoritmo limpiacuadra
	// Numero de utencilios a pedir
	NUMERO_UTENSILIOS <- 3
	// Numero de calles a limpiar
	NUMERO_CALLES <- 4
	// Utencilio de limpieza
	Dimension Utensilios[NUMERO_UTENSILIOS]
	// Calles a limpiar, 4 en una cuadra
	Dimension Calles[NUMERO_CALLES]
	// Numeros
	Dimension NumerosNombres[5]
	NumerosNombres[1] <- '1'
	NumerosNombres[2] <- '2'
	NumerosNombres[3] <- '3'
	NumerosNombres[4] <- '4'
	// Invita personas
	Escribir 'Te invitamos a colaborar el día 20 de febrero de 2019 en la limpieza de la cuadra Constitución. Nos reuniremos en la Av. Mariano Escobedo para comenzar las labores. Te esperamos, recuerda que: Una cuadra limpia habla bien de sus habitantes'
	Escribir 'Preparando telefono para llamar, introduce el numero del vecino, escribe termine cuando hayas terminado de llamar'
	// Pide al usuario el teléfono a llamar
	Leer telefonoVecino
	// Llama a vecinos
	Mientras telefonoVecino<>'termine' Hacer
		Escribir 'Llamando a '+telefonoVecino+', diciendo: Hola estás invitado a colaborar en la limpieza de la cuadra, te esperamos el día 5 de febrero de 2019, no faltes.'
		Leer telefonoVecino
	FinMientras
	// Pide al usuario un utencilio de limpieza a usar
	Para i<-1 Hasta NUMERO_UTENSILIOS Hacer
		Escribir 'Introduzca el utensilio de limpieza número '+NumerosNombres[i]+' de 3 a usar: '
		Leer Utensilios[i]
	FinPara
	callesLimpias <- ''
	// Itera sobre calles para usar los utencilios
	Para i<-1 Hasta NUMERO_CALLES Hacer
		Escribir 'Introduzca la calle número '+NumerosNombres[i]+' de 4 para limpiar: '
		Leer Calles[i]
		Si Longitud(Calles[i])>0 Entonces
			Escribir 'Limpiando calle '+Calles[i]
			Para j<-1 Hasta NUMERO_UTENSILIOS Hacer
				Escribir 'Usando '+Utensilios[j]+' para limpiar la calle '+Calles[i]
			FinPara
			callesLimpias <- callesLimpias+Calles[i]+', '
		SiNo
			Escribir 'La calle que introdujo es invalida'
		FinSi
	FinPara
	Escribir 'Las siguientes calles fueron limpiadas: '+callesLimpias
FinAlgoritmo

