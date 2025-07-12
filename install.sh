#!/bin/bash

# NOMBRE DEL SCRIPT: 'install.sh'

# Colores.
rojo="\e[1;31m"
verde="\e[1;32m"
rojo_p="\e[5;1;31m"
amarillo="\e[1;33m"
gris="\e[1;37m"

reset="\e[0m"

# Conceder permisos de super usuario.
if [ $(id -u) -ne 0 ]; then
       echo -e "${gris}Debes ser super usuario para instalar las dependencias. (${rojo_p}!${reset}${gris})${reset}"

exit

fi

# Instalacion.
clear
echo ""
echo -e "${rojo}Installing Dependencies.${reset}"
sleep 5
echo ""
apt install figlet -y
echo ""
echo -e "${amarillo}Installed Dependencies.${reset}"
sleep 2
echo ""
echo -e "${verde}Ejecute la herramienta. ${gris}-> ${rojo}bash BypasS.sh${reset}"
exit

