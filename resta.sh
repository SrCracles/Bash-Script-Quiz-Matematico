#!/bin/bash
typeset -i num1 num2 respuesta intentos resultado aux

num1=$((RANDOM % 101))
num2=$((RANDOM % 101))

if (( num1<num2 ))
    then
    aux=$num1
    num1=$num2
    num2=$aux
fi

resultado=$((num1 - num2))

echo ""
echo "***PROBLEMA DE RESTA***"
intentos=1

while (( intentos <= 3 ))
do
    echo -n "¿Cuanto es $num1 - $num2? "
    read respuesta
    
    if (( respuesta == resultado ))
    then
        echo "Correcto. La respuesta era: $resultado"
        echo ""
        echo -n "Presione ENTER para continuar"
        read
        exit 0
    else
        if (( intentos < 3 ))
        then
            echo "Incorrecto. Intento $intentos de 3"
            (( intentos = intentos + 1 ))
        else
            echo "Incorrecto. La respuesta correcta era: $resultado"
            echo ""
            echo -n "Presione ENTER para continuar"
            read
	    exit 0
        fi
    fi
done

echo ""
echo -n "Presione ENTER para continuar"
read

bash menu.sh

