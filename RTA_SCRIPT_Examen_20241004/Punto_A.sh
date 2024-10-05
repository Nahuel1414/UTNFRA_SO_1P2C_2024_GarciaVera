#!/bin/bash
mkdir /Examenes-UTN/
cd /Examenes-UTN/
mkdir -p alumno_1 alumno_2 alumno_3 profesores
for alumno in alumno_1 alumno_2 alumno_3; do
	cd "$alumno"
	touch parcial_1 parcial_2 parcial_3
	cd ..
done
