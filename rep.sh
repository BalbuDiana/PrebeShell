#!/bin/bash

printf "\033c"		#limpia pantalla
while [ "$op" != "6" ];do
MPG=$(dpkg --get-selections | grep -w mpg123 | grep -w install)
  if [ "$MPG" = "" ]; then
      echo -e " Mpg123 no esta instalado. Se porcedará a instalar"
  
		sudo apt-get install mpg123
		echo -e "\n El mpg123 esta instalado."
	
  else
     
 	  echo  "\n"
	  echo -e "\E[1;37m  Carpeta actual: `pwd`\n" #nos muestra dirección 
	  echo  "Selecciona la opción a realizar: \n "
	  echo  "1)Reproducir el contenido "
	  echo  "2)Cambiar de carpeta"
	  echo  "3)Subir una carpeta"
	  echo  "4)LArból de las carpetas"
	  echo  "5)Listar opciones del reproductor"
	  echo  "6)Salir"
	  
	  read op
	  
	  get= pwd
	  case $op in
		  1)
		   echo  "[	[s] Pausa\n[f] Siguiente\n[d] Anterior\n[b] Repetir\n[.] Adelante\n[,] Atrás\n[+]Volumen Arriba\n[-] Volumen Abajo\n[q] Quitar reproducción\n[h] Listar más opciones del mpg123\n "
	 	  `mpg123 -C -d $get* ` #se ejecunatn comando de mpg123
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
		  /bin/bash ./arbol.sh $pwd
		  echo -e "\E[1;35m	\nPresione cauqluier tecla"
		  read
		  clear
		  ;;
		  5)
		  echo -e "\E[1;33m	\nEOpciones: \n[s] Pausa\n[f] Siguiente\n[d] Anterior\n[b] Repetir\n[.] Adelante\n[,] Atrás\n[+]Volumen Arriba\n[-] Volumen Abajo\n[q] Quitar reproducción\n[h] Listar más opciones del mpg123\n "  
		  echo -e "\E[1;31m	\nPresiona cualquier tecla"
		  read
		  clear
		  ;;
		  6)
		  ;;
		  *) echo -e "\E[1;31m	Opcion  incorecta"
		  echo -e "Presione cualquier tecla"
		  read
		  clear
		  ;;
	  esac
  fi
done
