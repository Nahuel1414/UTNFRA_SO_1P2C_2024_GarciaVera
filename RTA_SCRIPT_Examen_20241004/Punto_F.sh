#!/bin/bash

echo "Mi IP publica es: $(curl -s ifconfig.me)" >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "El hash de mi usuario es: $(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
