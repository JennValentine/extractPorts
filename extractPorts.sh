#!/bin/bash
#====================================================
#   SCRIPT:                   EXTRACT PORTS
#   DESARROLLADO POR:         JENN VALENTINE 
#   FECHA DE ACTUALIZACIÃ“N:  01-04-2024 
#   CONTACTO POR TELEGRAMA:   https://t.me/JennValentine
#   GITHUB OFICIAL:           https://github.com/JennValentine/extractPorts
#====================================================

# Paleta de colores
reset="\033[0m"       # Restablecer todos los estilos y colores

# Colores de texto
black="\033[0;30m"     # Negro
red="\033[0;31m"       # Rojo
green="\033[0;32m"     # Verde
yellow="\033[0;33m"    # Amarillo
blue="\033[0;34m"      # Azul
magenta="\033[0;35m"   # Magenta
cyan="\033[0;36m"      # Cian
white="\033[0;37m"     # Blanco

checkmark="${green}[++]${reset}"
error="${red}[--]${reset}"
info="${yellow}[**]${reset}"
process="${magenta}[>>]${reset}"
indicator="${red}==>${reset}"

barra="${blue}|--------------------------------------------|${reset}"

#=============================================================================
# Para inplementar en la zsh
#
# which xclip || sudo apt-get install -y xclip
#
# sudo nano ~/.zshrc
# source ~/.zshrc
# sudo reboot
#=============================================================================

function extractPorts () {
    # Extrae los números de puerto de la forma "xxxx/open" del archivo proporcionado
    ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
    # Identifica la dirección IP única del archivo
    ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"

    # Imprime la información en un formato legible
    echo -e "\n${info} ${green} Extracting information...\n"
    echo -e "\t${indicator} ${green}IP Address: \033[1;37m$ip_address"
    echo -e "\t${indicator} ${green}Open ports: \033[1;37m$ports\n"

    # Verifica si xclip está instalado, si no, intenta instalarlo
    which xclip > /dev/null 2>&1 || sudo apt-get install -y xclip

    # Copia los puertos a la clipboard utilizando xclip
    echo $ports | tr -d '\n' | xclip -sel clip

    echo -e "\n${checkmark} ${green}Ports copied to clipboard"

    echo -e "\n${yellow}${info} ${white}GITHUB OFICIAL: ${green}https://github.com/JennValentine/extractPorts\n"
}

# Llamada a la función extractPorts con el primer argumento pasado al script
# Puedes usar el script pasándole el nombre del archivo como argumento, por ejemplo: ./script.sh archivo.txt
extractPorts "$1"

# Fin del script
