#!/bin/bash
particionesprimarias=3
particioneslogicas=6
disco="/dev/sdc"
{
	for i in $(seq 1 $particionesprimarias); do
		echo "n"
		echo "p"
		echo "$i"
		echo ""
		echo "+1G"
	done
	echo "w"	
} | sudo fdisk $disco

for i in $(seq 1 $particionesprimarias); do
	sudo mkfs.ext4 "${disco}${i}"
done

{
    for i in $(seq 1 $particioneslogicas); do
        echo "n"
        echo "l"
        echo ""
        echo "+1G"
    done
    echo "w"
} | sudo fdisk $disco

for i in $(seq 1 $particioneslogicas); do
    sudo mkfs.ext4 "${disco}5"
done
