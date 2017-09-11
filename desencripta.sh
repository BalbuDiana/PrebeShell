#!/bin/bash
usr=$1
pass=$2

id -u $usr > /dev/null;  ##SI existe el grupo va, si no le vale
if [ $? -ne 0 ]; then
	exit 1;
  
else

	export pass
    encriptada=`grep -w "$usr" /etc/shadow | cut -d: -f2`
    export ALGO=`echo $encriptada | cut -d'$' -f2`
    export SALT=`echo $encriptada | cut -d'$' -f3`
    contrasenia=$(perl -le 'print crypt("$ENV{pass}","\$$ENV{ALGO}\$$ENV{SALT}\$")')

    if [ "$contrasenia" == "$encriptada" ]; then
    	exit 0
    else
    	exit 1
    fi
fi
