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
bold="\033[1m"        # Texto en negrita
italic="\033[3m"      # Texto en cursiva
underline="\033[4m"   # Texto subrayado
blink="\033[5m"       # Texto parpadeante
reverse="\033[7m"     # Invertir colores de fondo y texto
hidden="\033[8m"      # Texto oculto (generalmente invisible)

# Colores de texto
black="\033[0;30m"     # Negro
red="\033[0;31m"       # Rojo
green="\033[0;32m"     # Verde
yellow="\033[0;33m"    # Amarillo
blue="\033[0;34m"      # Azul
magenta="\033[0;35m"   # Magenta
cyan="\033[0;36m"      # Cian
white="\033[0;37m"     # Blanco

# Colores de fondo
bg_black="\033[0;40m"     # Fondo Negro
bg_red="\033[0;41m"       # Fondo Rojo
bg_green="\033[0;42m"     # Fondo Verde
bg_yellow="\033[0;43m"    # Fondo Amarillo
bg_blue="\033[0;44m"      # Fondo Azul
bg_magenta="\033[0;45m"   # Fondo Magenta
bg_cyan="\033[0;46m"      # Fondo Cian
bg_white="\033[0;47m"     # Fondo Blanco

# Iconos
checkmark="${green}[++]${reset}"
error="${red}[--]${reset}"
info="${yellow}[**]${reset}"
process="${magenta}[>>]${reset}"
indicator="${red}==>${reset}"

# Barra de separación
barra="${blue}|--------------------------------------------|${reset}"
bar="${yellow}--------------------------------------------${reset}"

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
    echo -e "\t${indicator} ${green}Open ports: \033[1;37m$ports"

    # Verifica si xclip está instalado, si no, intenta instalarlo
    which xclip > /dev/null 2>&1 || sudo apt-get install -y xclip

    # Copia los puertos a la clipboard utilizando xclip
    echo $ports | tr -d '\n' | xclip -sel clip

    echo -e "\n${checkmark} ${green}Ports copied to clipboard"

    echo -e "\n${yellow}${info} ${white}GITHUB OFICIAL: ${green}https://github.com/JennValentine/extractPorts\n"
    echo -e "$barra"
}

# Llamada a la función extractPorts con el primer argumento pasado al script
# Puedes usar el script pasándole el nombre del archivo como argumento, por ejemplo: ./script.sh archivo.txt
extractPorts "$1"

# Fin del script
