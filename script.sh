#!/bin/bash

# Criação dos grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

# Criação dos usuários
sudo useradd -m carlos
sudo useradd -m maria
sudo useradd -m joao
sudo useradd -m debora
sudo useradd -m sebastiana
sudo useradd -m roberto
sudo useradd -m josefina
sudo useradd -m amanda
sudo useradd -m rogerio

# Configuração da senha
echo "Senha123" | sudo passwd --stdin carlos
echo "Senha123" | sudo passwd --stdin maria
echo "Senha123" | sudo passwd --stdin joao
echo "Senha123" | sudo passwd --stdin debora
echo "Senha123" | sudo passwd --stdin sebastiana
echo "Senha123" | sudo passwd --stdin roberto
echo "Senha123" | sudo passwd --stdin josefina
echo "Senha123" | sudo passwd --stdin amanda
echo "Senha123" | sudo passwd --stdin rogerio

# Criação dos diretórios
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

# Configuração das permissões
sudo chown root:root /publico
sudo chmod 777 /publico
sudo chown root:GRP_ADM /adm
sudo chmod 770 /adm
sudo chown root:GRP_VEN /ven
sudo chmod 770 /ven
sudo chown root:GRP_SEC /sec
sudo chmod 770 /sec
