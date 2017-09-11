#!/bin/bash
while [ "$opGet" != "4" ];do
magicNum=$(shuf -i 1-1000 -n 1) #Genera número aleatorio
numGet=0
opGet=0

echo -e "\E[1;37 mBienvenido a MagicNumber Game, por favor escoge el nivel de dificulad"

echo -e "\t 1) Fácil  (5 vidas)"
echo -e "\t 2) Medio  (3 vidas)"
echo -e "\t 3) Difćil (2 vidas)"
echo -e "\t 4) Salir"

echo -e "*****\E[1;36mEL NÚMERO SE ENCUENTRA ENTRE 1 Y 1000*****"
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
			echo -e "\E[1;31m***************************************"
			echo -e "\E[1;31m****GANASTE EL NUMERO ERA $magicNum****"
			echo -e "\E[1;31m***************************************"
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
			echo -e "\E[1;31m***************************************"
			echo -e "\E[1;31m****GANASTE EL NUMERO ERA $magicNum****"
			echo -e "\E[1;31m***************************************"
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
			echo -e "\E[1;31m***************************************"
			echo -e "\E[1;31m****GANASTE EL NUMERO ERA $magicNum****"
			echo -e "\E[1;31m***************************************"
			opGet=2 
			wait && ./magicNum #Carga de nuevo el juego 
			
fi

	done ;;

4) echo "ADIÓS"
done;;
*) echo "Opción inválida";;

esac
 wait && ./magicNum #Carga de nuevo el juego 
done
