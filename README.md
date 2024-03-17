![logo](https://github.com/JennValentine/extractPorts/blob/main/Imagenes/extractPorts.jpg)

# extractPorts

## Descripción
Este script Bash extrae y presenta información sobre puertos abiertos de un escaneo de Nmap.
Toma el archivo de salida de un escaneo de Nmap como argumento, identifica la dirección IP,
enumera los puertos abiertos y los copia al portapapeles usando xclip.

## :book: Instalacion
```bash
sudo apt install xclip -y
cd /opt
sudo rm -rf extractPorts
sudo git clone https://github.com/JennValentine/extractPorts
sudo chmod +x extractPorts/*
cd extractPorts
```

## :book: Acceso directo
```bash
cd
echo "cd /opt/extractPorts.sh && sudo ./extractPorts.sh" > extractPorts 
sudo chmod +x extractPorts
sudo mv extractPorts /usr/local/bin/extractPorts
cd
```

## :book: Acceso directo (En caso de error)
```bash
sudo cp extractPorts.sh extractPorts_$RANDOM.sh
sudo mv extractPorts.sh extractPorts
sudo rm -rf /usr/bin/extractPorts
sudo mv extractPorts /usr/bin/extractPorts
cd
```

## Modo de Uso

Ejecute el script con el archivo de salida de Nmap (allPorts.gnmap) como argumento:

```bash
extractPorts allPorts.gnmap
```
DATA: Esto extraerá información sobre los puertos abiertos del allPorts.gnmap proporcionado.
archivo, visualizarlo y copiar la lista de puertos abiertos al portapapeles.

## :octocat: Créditos
1. [Jenn Valentine](https://t.me/JennValentine) - Update Contributor