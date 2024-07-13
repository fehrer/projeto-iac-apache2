#!/bin/bash

echo "Provisionando Servidor Web Apache2"

echo "Atualizando Server" 

apt update -y
apt upgrade -y

echo "Instalando Apache2 e Unzip" 

apt install apache2 -y 
apt install unzip -y

echo "Baixando a aplicação" 

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main 
cp -R * /var/www/html/

echo "Finalizado com Sucesso!!"





