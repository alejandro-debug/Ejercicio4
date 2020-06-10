#Script basico bash.

#1.A mi entender, el output busca obtener los datos de envio de preferencia de cada usuario ingresado por variable.

#2. 

	#!/bin/bash

	users_id=(71665538 66146765 132961968 15096445 172753273 54152646) #Se declara la variable "users_id" que contiene el id de los usuarios.

	for users_id in ${users_id[*]}	#Declaracion de bucle for, donde la variable "users_id" va a recorrer el vector.

	do #Inicia el bucle.

		curl=$(curl -s " api.mercadolibre.com/users/$users_id/shipping_preferences " | jq -c #Declaracion de variable curl, que va a transferir los datos recolectados por URL de los "$user_id".
		'.services')

		echo "$users_id: $curl" #Se muestra por pantalla los datos "$curl" de cada "$user_id".

	done #Fin de bucle.


#3.Se imprimen seis lineas como output, una por cada "user_id".