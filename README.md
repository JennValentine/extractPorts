![logo](https://github.com/JennValentine/extractPorts/blob/main/Imagenes/extractPorts.jpg)

# extractPorts

## :information_source: Descripción
Este script Bash extrae y presenta información sobre puertos abiertos de un escaneo de Nmap.
Toma el archivo de salida de un escaneo de Nmap como argumento, identifica la dirección IP,
enumera los puertos abiertos y los copia al portapapeles usando xclip.

## :arrow_down: Instalacion
```bash
sudo apt-get install -y xclip
cd /opt
sudo rm -rf extractPorts
sudo git clone https://github.com/JennValentine/extractPorts
sudo chmod +x extractPorts/*
cd extractPorts
ls -lthas
```

## :book: Acceso directo
```bash
cd
cd /opt/extractPorts
sudo cp extractPorts.sh extractPorts_$RANDOM.sh
sudo mv extractPorts.sh extractPorts
sudo rm -rf /usr/bin/extractPorts
sudo mv extractPorts /usr/local/bin/
cd
```

## :hammer: Modo de Uso

Ejecutar el script con el archivo de salida de Nmap (allPorts.gnmap) como argumento:

```bash
extractPorts allPorts.gnmap
```
:books: DATA: Esto extraerá información sobre los puertos abiertos del archivo allPorts.gnmap proporcionado. 
Además de ser visualizado en pantalla y copiado al portapapeles.

## :octocat: Créditos
1. [Jenn Valentine](https://t.me/JennValentine) - Update Contributor