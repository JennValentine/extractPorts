![logo](https://img.freepik.com/vector-premium/pelirroja-anime-error-404-pagina-no-encontrada_150972-657.jpg?w=826)

# extractPorts :octocat: 

## :information_source: Descripción
Este script Bash extrae y presenta información sobre puertos abiertos de un escaneo de Nmap.
Toma el archivo de salida de un escaneo de Nmap como argumento, identifica la dirección IP,
enumera los puertos abiertos y los copia al portapapeles usando xclip.

## :computer: Instalación
```bash
cd /opt
sudo rm -rf extractPorts
sudo git clone https://github.com/JennValentine/extractPorts
sudo chmod +x extractPorts/*
cd extractPorts
ls -lthas
```

## :key: Acceso Directo
```bash
cd /opt/extractPorts
sudo cp extractPorts.sh extractPorts_$RANDOM.sh
sudo mv extractPorts.sh extractPorts
sudo rm -rf /usr/local/bin/extractPorts
sudo mv extractPorts /usr/local/bin/
cd
```

## :package: Paquete
```bash
sudo apt-get install -y xclip
```

## :computer: Instalación en una Línea
```bash
wget https://raw.githubusercontent.com/JennValentine/extractPorts/main/install.sh; sudo chmod +x install.sh; sudo ./install.sh; sudo rm -rf install.sh
```

## :rocket: Modo de Uso

Ejecutar el script con el archivo de salida de Nmap (allPorts.gnmap) como argumento:

```bash
extractPorts allPorts.gnmap
```
![logo](https://github.com/JennValentine/extractPorts/blob/main/Imagenes/extractPorts.jpg)
:memo: Esto extraerá información sobre los puertos abiertos del archivo allPorts.gnmap proporcionado. 
Además de ser visualizado en pantalla y copiado al portapapeles.

## :hammer_and_wrench: Requisitos 

- Sistema Operativo: Linux/Unix
- Dependencias: Bash

## :open_file_folder: Estructura del Repositorio

```plaintext
extractPorts/
│
├── Imagenes/            # Carpeta que contiene imágenes de ejemplos y del script en ejecución.
│   └── extractPorts.jpg
│
├── LICENSE              # Licencia MIT para el proyecto.
│
├── README.md            # Archivo README con la documentación del proyecto.
│
├── install.sh           # Script de instalación automática.
│
└── extractPorts.sh      # Script principal que realiza la extracción de información.
```

## :email: Contacto
* :busts_in_silhouette: [Jenn Valentine](https://t.me/JennValentine) - Contribución