#!/bin/bash

Lista ()
{
	encontrar=0
	for f in $( ls ); do 						
		if [ "$f" == "lista.txt" ]; then 
			encontrar=1
			break;
		fi
	done
	if [ "$encontrar" == "0" ]; then 			
		echo -e "mercurio\nvenus\ntierra\nmarte\njupiter\nsaturno\nurano\nneptuno\npluton\nceres\nio\nluna\ncalisto\neuropa\ntitan\nextraterrestre\nmeteorito\npulsar\nnebulosa\nandromeda" >> "lista.txt"
	fi
}

Random()
{
	cont=0
	aleatorio=$((RANDOM % 20)) 				
	for word in $(cat lista.txt); do
		if [ $cont == $aleatorio ]; then
			pal="$word"					
			break							
		fi
		let cont=$cont+1
	done 
	
}


buscaLetra()
{
	#contaWinUp=0
	leraEncontrada=0
	for (( i=0; i<${#pal}; i++ )); do 				
  		if [ "$letra" == "${pal:$i:1}" ]; then	
  			encontradas[$n]=$letra 						
  			let n=$n+1							
  			leraEncontrada=1
  			for elemento in "$encontradas"; do 			
  				if [ "$letra" != "$elemento" ]; then
  					nletra=1						 
  				else
  					nletra=0
  					break
  				fi
  			done
  			if [ "$nletra" == "1" ]; then			  
  				let ganador=$ganador+1				
  				nletra=0
  			fi	
  		fi
  	done
 	
}


 quepasa ()
{
	let letrasPalabra="${#pal}"-1				 
  	if [ "$ganador" == "$letrasPalabra" ]; then	
  		ganaste=1 									
  	fi

  	if [ "$leraEncontrada" == "0" ]; then 				
		let contar=$contar+1
	  		if [ "$contar" == "5" ]; then	
	  			perdiste=1
	  		fi
	fi
}

imrimeGanador()
{
	echo -e ''
	echo -e '\e[0;35m\t\t\t\t     _______'
	echo -e '\e[0;35m\t\t\t\t    |/      |'
	echo -e '\e[0;35m\t\t\t\t    |       |'
	echo -e '\e[0;35m\t\t\t\t    |       |\t \e[1;34m_' 
	echo -e '\e[0;35m\t\t\t\t    |   \t\e[1;33m0o0\e[1;33m      ¡Gracias!'
	echo -e '\e[0;35m\t\t\t\t    |   \t\e[1;36m\/|\/\e[1;36m  ¡Me has salvado!'
	echo -e '\e[0;35m\t\t\t\t    |   \t\e[1;39m |'
	echo -e '\e[0;35m\t\t\t\tjgs_|___\t\e[1;34m/ \'
	echo -e ''
}

imprimeEncontradas()
{
	found=0
	printf "\n\t\t\e[1;31mPalabra :  \e[0m"
	for (( i=0; i<${#pal}; i++ )); do 							
  		for (( j=0; j<=$n; j++ )); do 							
  			if [ "${encontradas[$j]}" == "${pal:$i:1}" ]; then	
  				printf "\e[1;33m${encontradas[$j]} \e[0m"			 
  				let found=$found+1
  				break
  			fi
  		done
  		if [ "$found" == "0" ]; then								
  			printf "_ "
  		fi
  		found=0
	done
}



mufunction()
{
	case "$contar" in
		0)
			echo -e ''
			echo -e '\e[0;34m\t\t\t\t*****_______'
			echo -e '\e[0;34m\t\t\t\t    |/      '
			echo -e '\e[0;34m\t\t\t\t    |      '
			echo -e '\e[0;34m\t\t\t\t    |      '
			echo -e '\e[0;34m\t\t\t\t    |      '
			echo -e '\e[0;34m\t\t\t\t    |      '
			echo -e '\e[0;34m\t\t\t\t    |'
			echo -e '\e[0;34m\t\t\t\t    |'
			echo -e ''
			;;
	
		1)
			echo -e ''
			echo -e '\e[0;35m\t\t\t\t ****_______'
			echo -e '\e[0;35m\t\t\t\t    |/      |'
			echo -e '\e[0;35m\t\t\t\t    |      \e[1;33m-_-'
			echo -e '\e[0;35m\t\t\t\t    |      '
			echo -e '\e[0;35m\t\t\t\t    |       '
			echo -e '\e[0;35m\t\t\t\t    |      '
			echo -e '\e[0;35m\t\t\t\t    |'
			echo -e '\e[0;35m\t\t\t\t    |'
			echo -e ''
			;;
		2)
			echo -e ''
			echo -e '\e[0;36m\t\t\t\t  ***_______'
			echo -e '\e[0;36m\t\t\t\t    |/      |'
			echo -e '\e[0;36m\t\t\t\t    |      \e[1;33mn_n'
			echo -e '\e[0;36m\t\t\t\t    |      \e[1;33m\|/'
			echo -e '\e[0;36m\t\t\t\t    |       '
			echo -e '\e[0;36m\t\t\t\t    |      '
			echo -e '\e[0;36m\t\t\t\t    |'
			echo -e '\e[0;36m\t\t\t\t    |'
			echo -e ''
			;;
		3)
			echo -e ''
			echo -e '\e[0;37m\t\t\t\t  ** _______'
			echo -e '\e[0;37m\t\t\t\t    |/      |'
			echo -e '\e[0;37m\t\t\t\t    |      \e[1;33mo_o'
			echo -e '\e[0;37m\t\t\t\t    |      \e[1;33m/|\/'
			echo -e '\e[0;37m\t\t\t\t    |      \e[1;33m |'
			echo -e '\e[0;37m\t\t\t\t    |      '
			echo -e '\e[0;37m\t\t\t\t    |'
			echo -e '\e[0;37m\t\t\t\t    |'
			echo -e ''
			;;
	
	
		4)
			echo -e ''
			echo -e '\e[0;33m\t\t\t\t    *_______'
			echo -e '\e[0;39m\t\t\t\t    |/      |'
			echo -e '\e[0;33m\t\t\t\t    |      x_x'
			echo -e '\e[0;33m\t\t\t\t    |      /|\'
			echo -e '\e[0;39m\t\t\t\t    |       |'
			echo -e '\e[0;33m\t\t\t\t    |      / \'
			echo -e '\e[0;33m\t\t\t\t    |   '   
			echo -e '\e[0;39m\t\t\t\t    | '
			echo -e ''
			perdiste=1
			;;
		

		esac
}


Lista
salir=0
clear
while [ "$salir" == 0 ]; do
	case "$op" in
		0) #menú 
			echo -e "\t\t\e[1;33m \n\n\n\t Ahorcado:\n"       
			
			echo -e "\e[1;34m\n Selecciona una opción \e[1;33m:\e[1;37m\n 1) Jugar! 2) Instrucciones 3) Salir\n\e[0m"
			read op
			;;
		1) 	
			echo -e "\t\t\e[1;34m \n\n\n\t Nuevo juego:\n"
			op=0
			ganaste=0
      pal=0
			encontradas=(0)
      perdiste=0
			contar=0
			ganador=0
			n=0
			
			

			Random

			
			while :;do
				clear
				mufunction
				imprimeEncontradas
				printf "\n\n\t\t    \e[1;34m¿Con qué letra intentarás ahora?  \e[0m"
        echo "\n\n\t\t    \e[1;34m(recuerda que todas las opciones estan relacionadas con el spacio <3) \e[0m"
				read letra	
				buscaLetra	
				quepasa
				if [ "$ganaste" == "1" ] || [ "$perdiste" == "1" ]; then
					break
				fi
			done

			letra=0
			if [ $ganaste == 1 ]; then
				clear
				imrimeGanador
				imprimeEncontradas
				echo -e "\n\n\t\t\t\e[1;33m¡G A N A S T E!!"
			elif [ $perdiste == 1 ]; then
				clear
				mufunction
				imprimeEncontradas
				echo -e "\n\n\e[1;36m¡P E R D I S T E! \e[1;31m "
				echo -e "\n\n\e[1;36m¡Puedes volverlo a intentar! \e[1;31m "
				echo ""
				echo ""
				echo -e "\n\t\t\t\e[1;39m Palabra: '\e[1;37m$pal\e[1;33m'\e[0m"
			fi
			echo -e "\e[1;31m\n\n\n\n\nPresiona 'enter' para volver al menú principal."
			read
			;;
		2)
			op=0
			clear
			echo -e "\e[1;34m\n\n\n\n INSTRUCCIONES\n\n"
			echo -e "\e[1;32m Salva al muñequito adivinando la palabra"
			echo -e "  solo pudes ingresar de a unaa la vez"
			echo -e "\e[1;33m\n\t\tPresiona 'enter' para volver al menú principal."
			read
			;;
	
		3) #Salir 
			op=0
			salir=1
			bash $PWD/base.sh
			;;
		*)
			op=0
			;;
	esac
done


