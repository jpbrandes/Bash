#!/bin/bash

sudo dpkg --add-architecture i386

echo "ATUALIZANDO SISTEMA..."
sudo apt update && sudo apt upgrade -y

echo "INSTALANDO PROGRAMAS ESSENCIAIS"
sudo apt install -y vlc libreoffice gdb gcc adb git vim openjdk-25-jdk


#------------------------------------------

echo "INSTALANDO GOOGLE CHROME..."

# Baixa como usuário normal (sem sudo)
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instala com sudo
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Remove arquivo depois
rm -f google-chrome-stable_current_amd64.deb

echo "INSTALANDO VISUAL STUDIO CODE"

# Baixa como usuário normal (sem sudo)
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/10c8e557c8b9f9ed0a87f61f1c9a44bde731c409/code_1.117.0-1776814346_amd64.deb

# Instala com sudo
sudo apt install -y ./code_1.117.0-1776814346_amd64.deb

# Remove arquivo depois
rm -f code_1.117.0-1776814346_amd64.deb

echo "TUDO INSTALADO COM SUCESSO!"
