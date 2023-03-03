#!/bin/bash

# Atualiza o sistema
sudo apt update && sudo apt upgrade -y

# Instala o servidor Apache2
sudo apt install apache2 -y

# Faz o download do arquivo main.zip
sudo wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompacta o arquivo main.zip na pasta /var/www/html
sudo unzip /tmp/main.zip -d /var/www/html/
