#!/bin/bash

#=============================================================================
# which xclip || sudo apt install xclip -y
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
    echo -e "\n\033[1;33m[**] Extracting information...\n"
    echo -e "\t\033[1;32m>> IP Address: \033[1;37m$ip_address"
    echo -e "\t\033[1;32m>> Open ports: \033[1;37m$ports\n"

    # Verifica si xclip está instalado, si no, intenta instalarlo
    which xclip > /dev/null 2>&1 || sudo apt-get install -y xclip

    # Copia los puertos a la clipboard utilizando xclip
    echo $ports | tr -d '\n' | xclip -sel clip

    echo -e "\033[1;32m[++] Ports copied to clipboard\n"
}

# Llamada a la función extractPorts con el primer argumento pasado al script
# Puedes usar el script pasándole el nombre del archivo como argumento, por ejemplo: ./script.sh archivo.txt
extractPorts "$1"

# Fin del script
