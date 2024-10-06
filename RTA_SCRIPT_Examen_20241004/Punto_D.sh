#!/bin/bash
mkdir Estructura_Asimetrica
cd Estructura_Asimetrica
mkdir -p correo clientes

for i in {1..100}; do
    touch correo/carta_$i.txt
    touch clientes/carta_$i.txt
done

for j in {1..10}; do
    touch correo/cartero_$j.txt
done
