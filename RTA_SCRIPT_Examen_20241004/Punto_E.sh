#!/bin/bash
grep -i "memtotal" /proc/meminfo >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_SCRIPT_Examen_20241004/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i "manufacturer" >> ~/UTNFRA_SO_1P2C_2024_GarciaVera/RTA_SCRIPT_Examen_20241004/Filtro_Basico.txt
