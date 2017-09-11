#!/bin/bash


Prebeshell()
{

  trap > /dev/null' SIGINT   ##evitar la matanza con control z o c
  trap > /dev/null' SIGTSTP
  
  if [ $(whoami) != "root" ]; then
	echo -e "Es necesario que la prebeshell se ejecute como super usuario"
	exit 1
  fi

  while [ $intentos -ne 0 ]; do
	clear
	echo -n -e "Ingrese el usuario:"
	read usuario

	echo -n -e "Ingrese la contrasenia:"
	read -s password

	####Archivo .sh que se usa para poder obtener lo de los usuarios 
	bash $PWD/desencripta.sh $usuario $password

	if [ $? -eq 0 ]; then
		intentos=3
		break
	else
		intentos=$((intentos-1))
		echo -e "Usuario o contraseña inválidos."
		sleep 2
	fi
done

if [ $intentos -eq 0 ]; then
	echo -e ""
	exit 1
fi
clear
prompt="["$HOSTNAME" : "$usuario"  ::  "$PWD"] 
comando=""

while [ "$comando" != "salir" ]; do

	echo -ne $prompt
	read -e comando

	if [ "$comando" == "segundo" ]; then
		bash $PWD/calledScript.sh
	fi

	carpeta=`echo $comando | grep "cd" -o`
	if [ "$carpeta" == "cd" ]; then
		comando="cd"
	fi

	case $comando in
		'fecha')
			bash $PWD/fecha.sh
		;;

		'hora')
			bash $PWD/hora.sh
		;;
		
		'arbol')
			bash $PWD/arbol.sh
		;;

		'creditos')
			bash $PWD/creditos.sh
		;;

		'salir')
		;;

		'infosis')
			bash $PWD/infsys.sh
		;;

		'ayuda')
			bash $PWD/aiuda.sh
		;;

		'ahorcado')
			bash $PWD/ahorcadoestelar.sh
		;;

		'magic')
			bash $PWD/magicNum.sh
		;;
    
    		'ppt')
			bash $PWD/ppt.sh
		;;

		'infosis')
			
		
		;;

		'buscar')
			echo -n "Indique el nombre del archivo: "
			read -e nombreArchivo
			echo -n "Ruta[default: $PWD]: "
			read -e rutaArchivo

			bash $PWD/buscararchivo.sh $nombreArchivo $rutaArchivo
		;;

		'prebeplayer')
			
		;;


		'login')
			clear
			echo -n -e "Indique el nombre de usuario:"
			read nuevoUsuario

			echo -n -e "Contrasenia:"
			read -s nuevoPassword

			bash $PWD/login.sh $nuevoUsuario $nuevoPassword

			if [ $? -eq 0 ]; then
				usuario=$nuevoUsuario
				password=$nuevoPassword
			else
				echo -e "Usuario o contraseña no válidos."
				sleep 2
			fi
			clear
		;;


		*)
			if [ "$comando" != "" ]; then
				echo "La opción es inválida :("
			fi
		;;
	esac

done


}
