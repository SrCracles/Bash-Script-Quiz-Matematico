#!/bin/bash
typeset -i a b respuesta intentos resultado dividendo

a=$((RANDOM % 11))
b=$((RANDOM % 11))

if ((a<1))
    then
    a=1
    fi

if ((b<1))
    then
    b=1
    fi
dividendo=$((a * b))

resultado=$((dividendo/b))

echo ""
echo "***PROBLEMA DE DIVISION***"
intentos=1

while (( intentos <= 3 ))
do
    echo -n "¿Cuanto es $dividendo / $b? "
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

