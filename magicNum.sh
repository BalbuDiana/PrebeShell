#!/bin/bash

magicNum=$(shuf -i 1-1000 -n 1) #Genera número aleatorio
numGet=0
opGet=0

echo "Bienvenido a MagicNumber Game, por favor escoge el nivel de dificulad"

echo "1) Fácil  (5 vidas)"
echo "2) Medio  (3 vidas)"
echo "3) Difćil (2 vidas)"
echo "4) Salir"

echo "*****EL NÚMERO SE ENCUENTRA ENTRE 1 Y 1000*****"
echo $magicNum 



read opGet



case $opGet in


1) 
while [ $opGet -le 5 ]
	do
	echo "Ingresa el número:"
	read numGet
		if [ "$numGet" -ne "$magicNum" ]; then 
			if [ "$numGet" -gt "$magicNum" ]; then
				echo "El número es menor a $numGet"
			fi

			if [ "$numGet" -lt "$magicNum" ]; then
				echo "El número es mayor a $numGet"
		
			fi
opGet=$(( $opGet + 1 ))

		fi



		if [ "$numGet" -eq "$magicNum" ]; then
			echo "***************************************"
			echo "****GANASTE EL NUMERO ERA $magicNum****"
			echo "***************************************"
			opGet=5 
			wait && ./magicNum #Carga de nuevo el juego 
			
fi

	done ;;


2) 
while [ $opGet -le 3 ]
	do
	echo "Ingresa el número:"
	read numGet
		if [ "$numGet" -ne "$magicNum" ]; then 
			if [ "$numGet" -gt "$magicNum" ]; then
				echo "El número es menor a $numGet"
			fi

			if [ "$numGet" -lt "$magicNum" ]; then
				echo "El número es mayor a $numGet"
		
			fi
opGet=$(( $opGet + 1 ))

		fi



		if [ "$numGet" -eq "$magicNum" ]; then
			echo "***************************************"
			echo "****GANASTE EL NUMERO ERA $magicNum****"
			echo "***************************************"
			opGet=3 
			wait && ./magicNum #Carga de nuevo el juego 
			
fi
	done ;;


3) 
while [ $opGet -le 2 ]
	do
	echo "Ingresa el número:"
	read numGet
		if [ "$numGet" -ne "$magicNum" ]; then 
			if [ "$numGet" -gt "$magicNum" ]; then
				echo "El número es menor a $numGet"
			fi

			if [ "$numGet" -lt "$magicNum" ]; then
				echo "El número es mayor a $numGet"
		
			fi
opGet=$(( $opGet + 1 ))

		fi



		if [ "$numGet" -eq "$magicNum" ]; then
			echo "***************************************"
			echo "****GANASTE EL NUMERO ERA $magicNum****"
			echo "***************************************"
			opGet=2 
			wait && ./magicNum #Carga de nuevo el juego 
			
fi

	done ;;

# 4) cargar el archivo principal de la prebe shell 
*) echo "Opción inválida";;

esac
 wait && ./magicNum #Carga de nuevo el juego 
