![logo](https://edteam-media.s3.amazonaws.com/blogs/big/2ab53939-9b50-47dd-b56e-38d4ba3cc0f0.png)

# extractPorts

## :information_source: Descripción
Este script Bash extrae y presenta información sobre puertos abiertos de un escaneo de Nmap.
Toma el archivo de salida de un escaneo de Nmap como argumento, identifica la dirección IP,
enumera los puertos abiertos y los copia al portapapeles usando xclip.

## :computer: Instalación
```bash
sudo apt-get install -y xclip
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

## :rocket: Modo de Uso

Ejecutar el script con el archivo de salida de Nmap (allPorts.gnmap) como argumento:

```bash
extractPorts allPorts.gnmap
```
![logo](https://github.com/JennValentine/extractPorts/blob/main/Imagenes/extractPorts.jpg)
:memo: Notas: Esto extraerá información sobre los puertos abiertos del archivo allPorts.gnmap proporcionado. 
Además de ser visualizado en pantalla y copiado al portapapeles.

## :email: Contacto
* :busts_in_silhouette: [Jenn Valentine](https://t.me/JennValentine) - Update Contributor :octocat: