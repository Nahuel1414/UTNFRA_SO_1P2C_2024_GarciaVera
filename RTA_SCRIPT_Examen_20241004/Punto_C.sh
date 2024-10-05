#!/bin/bash
sudo groupadd p1c2_2024_gAlumnO
sudo groupadd p1c2_2024_gProfesores

for usuario in p1c2_2024_A1 p1c2_2024_A2 p1c2_2024_A3; do
	sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumnO "$usuario"
done

sudo useradd -m -s /bin/bash -c "Profesores" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1

chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
chmod 750 /Examenes-UTN/alumno_1

chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
chmod 760 /Examenes-UTN/alumno_2

chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
chmod 700 /Examenes-UTN/alumno_3

chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
chmod 775 /Examenes-UTN/profesores

sudo -u p1c2_2024_A1 bash -c 'whoami > /Examenes-UTN/alumno_1/validar.txt'
sudo -u p1c2_2024_A2 bash -c 'whoami > /Examenes-UTN/alumno_2/validar.txt'
sudo -u p1c2_2024_A3 bash -c 'whoami > /Examenes-UTN/alumno_3/validar.txt'
sudo -u p1c2_2024_P1 bash -c 'whoami > /Examenes-UTN/profesores/validar.txt'
