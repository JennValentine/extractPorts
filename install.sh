#!/bin/bash

cd /opt
sudo rm -rf extractPorts
sudo git clone https://github.com/JennValentine/extractPorts
sudo chmod +x extractPorts/*
cd extractPorts
ls -lthas
cd /opt/extractPorts
sudo cp extractPorts.sh extractPorts_$RANDOM.sh
sudo mv extractPorts.sh extractPorts
sudo rm -rf /usr/local/bin/extractPorts
sudo mv extractPorts /usr/local/bin/
cd
sudo apt-get install -y xclip
