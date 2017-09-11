#!/bin/bash

printf "\033c"		#limpia pantalla
while [ "$op" != "6" ];do
RESPUESTA=$(dpkg --get-selections | grep -w mpg123 | grep -w install)
  if [ "$RESPUESTA" = "" ]; then
      echo -e " El mpg123 no esta instalado. Se porcedará a instalar"
  
		sudo apt-get install mpg123
		echo -e "\n El mpg123 esta instalado."
	
  else
     
 	  echo  "\n"
	  echo -e "\E[1;37m  Carpeta actual: `pwd`\n"
	  echo  "Seleccione la opción que desea realizar: \n "
	  echo  ")Reproducir el contenido de la carpeta actual"
	  echo  ")Cambiar de carpeta"
	  echo  ")Subir una carpeta"
	  echo  ")Listar archivos y subcarpetas de la carpeta actual"
	  echo  ")Listar opciones del reproductor"
	  echo  ")Salir"
	  
	  read op
	  
	  toca= pwd
	  case $op in
		  1)
		   echo  "[	[s] Pausa\n[f] Siguiente\n[d] Anterior\n[b] Repetir\n[.] Adelante\n[,] Atrás\n[+]Volumen Arriba\n[-] Volumen Abajo\n[q] Quitar reproducción\n[h] Listar más opciones del mpg123\n "
	 	  `mpg123 -C -d $toca* `
	 	  clear
	 	  ;;
		  2) 
		  echo -e "\E[1;31m	Introduce la ruta a la que deseas ir: "  
		  	read ruta
			cd "$ruta" #lee la ruta  la que queremos ir y se cambia
		  printf "\033c"		
		  clear
		  ;;
		  3) 
		  cd ..
		  clear
		  ;;
		  4) 
		  printf "\033c"		
		  /bin/bash ./generales.sh arbol $cdo
		  echo -e "\E[1;35m	\nPresione una tecla para continuar..."
		  read
		  clear
		  ;;
		  5)
		  echo -e "\E[1;33m	\nEstas son las opciones del PrebePlayer: \n[s] Pausa\n[f] Siguiente\n[d] Anterior\n[b] Repetir\n[.] Adelante\n[,] Atrás\n[+]Volumen Arriba\n[-] Volumen Abajo\n[q] Quitar reproducción\n[h] Listar más opciones del mpg123\n "  
		  echo -e "\E[1;35m	\nPresione una tecla para continuar..."
		  read
		  clear
		  ;;
		  6)
			echo -e "\E[1;32m	¡HASTA LUEGO!"
		  ;;
		  *) echo -e "\E[1;31m	Opcion inválida. Intente de nuevo"
		  echo -e "Presione una tecla para continuar..."
		  read
		  clear
		  ;;
	  esac
  fi
done
