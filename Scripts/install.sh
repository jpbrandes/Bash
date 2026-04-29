#!/bin/bash

echo "ATUALIZANDO SISTEMA..."
sudo apt update && sudo apt upgrade -y

echo "INSTALANDO PROGRAMAS ESSENCIAIS"
sudo apt install -y vlc libreoffice


#------------------------------------------

echo "INSTALANDO GOOGLE CHROME..."

# Baixa como usuário normal (sem sudo)
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instala com sudo
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Remove arquivo depois
rm -f google-chrome-stable_current_amd64.deb

#------------------------------------------

echo "TUDO INSTALADO COM SUCESSO!"
