#!/bin/bash

# NOMBRE DEL SCRIPT: 'BypasS.sh'

# CREADOR: el_de_la_cuadra
# TIPO: Herramienta
# LANZAMIENTO: 08-07-2025

# COLORES NORMALES
rojo="\e[1;31m"
verde="\e[1;32m"
morado="\e[1;35m"
amarillo="\e[1;33m"
cyan="\e[1;34m"
azul="\e[1;36m"
gris="\e[1;37m"
reset="\e[0m"

# COLORES LUMINOSOS.
rojo_b="\e[0;31m"
verde_b="\e[0;32m"
gris_b="\e[0;37m"
morado_b="\e[0;35m"

# COLORES PARPADEANTES.
rojo_p="\e[5;1;31m"
verde_p="\e[5;1;32m"
morado_p="\e[5;1;35m"
amarillo_p="\e[5;1;33m"
cyan_p="\e[5;1;34m"
azul_p="\e[5;1;36m"
gris_p="\e[5;1;37m"

# COLORES DE FONDO.
rojo_f="\e[1;37;41m"
verde_f="\e[1;37;42m"
morado_f="\e[1;37;45m"
amarillo_f="\e[1;37;43m"
cyan_f="\e[1;37;44m"
azul_f="\e[1;37;46m"
gris_f="\e[1;30;47m"

# COLORES SUBRAYADOS
rojo_s="\e[4;1;31m"
verde_s="\e[4;1;32m"
morado_s="\e[4;1;35m"
amarillo_s="\e[4;1;33m"
cyan_s="\e[4;1;34m"
azul_s="\e[4;1;36m"
gris_s="\e[4;1;37m"
amarillo_sb="\e[4;0;33m"

usuario=$(whoami)

# Imprimir banner principal.
mi_banner() {
   clear
   echo -e "${verde_s}Usuario:${reset} ${gris}$usuario${reset}"
   echo ""
   figlet "Bypass"
   echo -e "${rojo_f}Autor:${reset} el_de_la_cuadra  ${rojo_f}Tipo:${reset} script  ${rojo_f}Lanzamiento:${reset} 15-07-2025"
   echo ""
   echo -e "${gris}"
}

# Ejecutar script.
if [ "$(echo $?)" == "0" ]; then
        mi_banner

        read -p "Nombre del sitio.? " site
        sleep 1
        echo -e "${gris}"
        read -p "Longitud para la contraseña.? " longitud
        sleep 1
        echo -e "${gris}"
        read -p "Ingrese el correo para generar la contraseña.? " correo
        sleep 1
        echo -e "${cyan}"
        read -p "Introduce el nombre del archivo para guardar la contraseña generada.? " file
        sleep 1
        echo -e "${reset}"
        bypass=$(tr -dc 'a-z0-9&#$.{}:;&[]%-/"!_,~\^' </dev/urandom | head -c $longitud)
        echo "SITE: $site  |  CORREO: $correo  | PASSWORD: $bypass" >> $file
        echo ""
        echo -e "${amarillo}Contraseña guardada en el archivo llamado como ${gris}--> ( ${verde}$file ${gris})${reset}"
        exit

else
        mi_banner
        echo -e "${gris}Error al generar la contraseña (${rojo_p}X${reset}${gris})${reset}"
        exit
fi


