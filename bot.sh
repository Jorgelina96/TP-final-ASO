export username=Jorgelina
echo "¡Buen dia! $username"


echo "---MENU DE OPCIONES---"
echo
echo "1.Nos muestra la hora en formato de 12 horas(AM/PM), "
echo "2.Mostrar el clima de hoy de bahia blanca"

opcion=0
while [ "$opcion" -lt "1" ] || [ "$opcion " -gt "2" ];

do
echo
echo "cual elegis?"
read opcion
if [ "$opcion" -lt "1" -o "$opcion" -gt "2" ];then
echo "opcion incorrecta,vuelva a elegir."
fi
done
if [ "$opcion" -eq "1" ]; then 
echo "$(date +%r)"
elif [ "$opcion" -eq "2" ]; then
curl wttr.in?0
fi


