#!/bin/bash

ARCHIVO="$HOME/repogit/UTNFRA_SO_1P2C_2024_MORALES/RTA_ARCHIVOS_Examen_20241005"
IP_USUARIO=$(curl -s ifconfig.me)
USER_HASH=$(sudo grep matias /etc/shadow | awk -F ':' '{print $1}')
HASH=$(sudo grep matias /etc/shadow | awk -F ':' '{print $2}')
URL_GIT=$(cd "$HOME/repogit/UTNFRA_SO_1P2C_2024_MORALES" && git remote get-url origin)

echo "Mi IP publica es: $IP_USUARIO" > $ARCHIVO/Filtro_Avanzado.txt
echo "Mi Usuario es: $USER_HASH" >> $ARCHIVO/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $HASH" >> $ARCHIVO/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $URL_GIT" >> $ARCHIVO/Filtro_Avanzado.txt

some_command > /dev/null
