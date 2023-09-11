#!/bin/bash
# Programa para crear menu con diversas opciones
# Autor: CripOt

opcion=0

while :
do 
	#Comando para limpiar pantalla
	clear
	#Menu
	echo "__________________________________________"
	echo "         Control del Dispositivo          "
	echo "__________________________________________"
	echo "            Menu Principal                "
	echo "1. Procesos actuales"
	echo "2. Memoria dispponible"
	echo "3. Espacio en Disco"
	echo "4. Información de Red"
	echo "5. Variables de entorno configuradas"
	echo "6. Información Programa"
	echo "7. Backup información"
	echo "8. Salir"

	#leer los datos de entrada del usuario
	read -n1 -p "\nIngrese una opción [1-8]  " opcion

	#Validar la opcion ingresada
	case $opcion in
		1)
			echo -e "\nMostrando Procesos..."
			ps aux
			sleep 3
			;;
		2)
			echo -e "\nMemoria disponible...."
			free -h
			sleep 3
			;;
		3)
			echo -e "\nEspacio en disco....."
			df -h
			sleep 3
			;;
		4) 
			echo -e "\nInformación de red..."
			ifconfig -a
			sleep 3
			;;
		5)
			echo -e	"\nVariables de entorno configuradas.."
			env -u var
			sleep 3
			;;
		6)
			echo -e "\nInformación de programa"
			dpkg -l | more
		        sleep 3
		        ;;
		7)
		        echo -e "\nComprimir archivos"
		        tar -czvf archivosCompresos.tar.gz $(ls | grep "$*.sh")
		        echo -e "\n Operación Completada"
		        sleep 3
		        ;;
		8)
		        echo -e "\nSaliendo del programa"
		        exit 0
		        ;;
	esac
done




