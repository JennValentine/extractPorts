#!/bin/bash
#====================================================
#   SCRIPT:                   DIRECTORIO MKT
#   DESARROLLADO POR:         JENN VALENTINE 
#   FECHA DE ACTUALIZACIÃ“N:  01-04-2024 
#   CONTACTO POR TELEGRAMA:   https://t.me/JennValentine
#   GITHUB OFICIAL:           https://github.com/JennValentine/Directorio-mkt
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

barra="${blue}|--------------------------------------------|${reset}"

# Definición de la función "mkt"
function mkt ()
{
    # Define las carpetas que deseas crear
    mkdir -p {content,exploits,nmap,notes,screenshot,scripts} 2>/dev/null
    
    # Muestra un mensaje indicando que se han creado las carpetas
    echo -e "\n${info} ${green}Creating folders...\n"
    
    # Imprime mensajes para cada carpeta creada
    echo -e "\t${green}==> Folders: ${white}content"
    echo -e "\t${green}==> Folders: ${white}exploits"
    echo -e "\t${green}==> Folders: ${white}nmap"
    echo -e "\t${green}==> Folders: ${white}notes"
    echo -e "\t${green}==> Folders: ${white}screenshot"
    echo -e "\t${green}==> Folders: ${white}scripts"
    
    # Muestra un mensaje de éxito
    echo -e "\n${checkmark} ${green}Folders Created Successfully"

    echo -e "\n${yellow}${info} ${white}GITHUB OFICIAL: ${green}https://github.com/JennValentine/Directorio-mkt\n"
}

# Llamada a la función "mkt"
mkt

# Fin del script
