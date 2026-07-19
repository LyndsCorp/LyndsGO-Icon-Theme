#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]; then
    echo "ES: Tienes que ejecutar este script como root (sudo)"
    echo "EN: You need to execute this script as root (sudo)"
    exit 1
fi

echo "ES: Instalando tema de iconos..."
echo "EN: Installing icon theme..."

cp -vr LyndsGO-Icon-Theme /usr/share/icons/
cp ATTRIBUTIONS.md        /usr/share/icons/LyndsGO-Icon-Theme/
cp LICENSE                /usr/share/icons/LyndsGO-Icon-Theme/
cp README.md              /usr/share/icons/LyndsGO-Icon-Theme/
cp MIME/*                 /usr/share/mime/packages/

echo "--------------------------------------------------"
echo "ES: ¡Tema de iconos instalado!"
echo "EN: Icon theme instaled!"
