echo "---ADIVINA EL NUMERO---"

aleatorio=$(( $RANDOM % 50 + 1 ))

intento=1
 
echo "¿Cual es tu nombre?: "
read nombre

echo " ¿Cual pensas que es el numero?:"
read numero

while [ "$numero" -ne "$aleatorio" ] && [ "$intento" -le "10" ];
do

if [ "$numero" -lt "$aleatorio" ]; then intento=$(( $intento+1 ))
echo "El numero que buscas es mayor"
elif [ "$numero" -gt "$aleatorio" ]; then intento=$(( $intento+1 ))
echo "El numero que buscas es menor"
else
 "ganaste"
fi

echo "¿cual crees que es el numero?"
read numero

done

if [ "$intento" -lt "6" ]; then
echo "¡Excelente! Adivinaste antes de los primeros 5 intentos"
elif [ "$intento" -le "10" ]; then
echo "¡Estuviste bien! adivinaste antes de los primeros 10 intentos"
else 
echo "No lo lograste,pero todos nos equivocamos ¡Segui intentando!"
echo "el numero era el $aleatorio"
fi
