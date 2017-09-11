#!/bin/bash

salir=0

while [ "$salir" == 0 ]; do
	case "$opc" in
		0) 
			echo -e "\t\t\e[1;30m \n\n\n\t Piedra, papel o tijera:\n"       
			echo -e "\e[1;34m\n Selecciona una opción \e[1;33m:\e[1;37m\n 1) Jugar! 2) Instrucciones 3) Salir\n\e[0m"
			read opc
			;;
		1) 
			echo -e "\t\t\e[1;34m \n\n\n\t Nuevo juego:\n"
			opc=0
			clear
     			echo -e " Piedra, papel o tijera \n"
     			echo ""
     			if [ -z $USER1 ]; then
    			read -e -p " Introduce el nombre del jugador: " USER1
     			fi  
     			echo -e "Que opcion eliges $USER1 : "
     			read -p "piedra, papel o tijera : " op
     			echo  "escogiste $op"

     			eda=`echo $(($RANDOM%3))`
     			#echo -e " $eda"

     			if [ $eda -eq 0 ]; then
     			eda=`echo "piedra"`
     			echo -e " El ordenador escogió piedra\n"
     			elif [ $eda -eq 1 ]; then
     			eda=`echo "papel"`
     			echo -e "El ordenador escogió papel\n"
     			elif [ $eda -eq 2 ]; then
     			eda=`echo "tijera"`
     			echo -e "El ordenador escogió tijera\n"
     			echo ""
     			fi

     			CADENA1="piedra"
     			CADENA2="papel"
     			CADENA3="tijera"

     			if [ $op = $eda ]; then
     			echo -e "Empate, los dos eligieron $op "
     			elif [ $op = $CADENA1 ] && [ $eda = $CADENA2 ]; then 
     			echo -e " $op vs $eda , ${COLOR_BLUE} gana el ordenador."
     			elif [ $op = $CADENA1 ] && [ $eda = $CADENA3 ]; then 
     			echo -e " $op vs $eda ,ganaste $USER1."
     			elif [ $op = $CADENA2 ] && [ $eda = $CADENA3 ]; then 
     			echo -e "${COLOR_BLUE} $op vs $eda,gana el ordenador."
     			elif [ $op = $CADENA2 ] && [ $eda = $CADENA1 ]; then 
     			echo -e " $op vs $eda ,ganaste $USER1."
     			elif [ $op = $CADENA3 ] && [ $eda = $CADENA2 ]; then 
     			echo -e "$op vs $eda ,ganaste $USER1."
     			elif [ $op = $CADENA3 ] && [ $eda = $CADENA1 ]; then 
     			echo -e "$op vs $eda ,perdiste."
     			fi
			;;
		2) 
			opc=0
			clear
			echo -e "\e[1;34m\n\n\n\n INSTRUCCIONES\n\n"
			echo -e "\e[1;32mLas reglas son :"
			echo -e "   introducir piedra papel o tijera"
			echo -e "       en minusculas por favor :V"
			echo -e "\e[1;33m\n\t\tPresiona 'enter' para volver al menú principal."
			read
			;;
		3) #Salir del juego
			opc=0
			salir=1
			bash $PWD/base.sh
			;;
		*)
			opc=0
			;;
	esac
done
