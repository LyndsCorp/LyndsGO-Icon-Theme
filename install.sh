#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]; then
    echo "ES: Tienes que ejecutar este script como root (sudo)"
    echo "EN: You need to execute this script as root (sudo)"
    exit 1
fi

echo "ES: Instalando tema de iconos..."
echo "EN: Installing icon theme..."

cp -r LyndsGO-Icon-Theme /usr/share/icons/
cp -r ATTRIBUTIONS.md /usr/share/icons/LyndsGO-Icon-Theme/
cp -r LICENSE /usr/share/icons/LyndsGO-Icon-Theme/
cp -r README.md /usr/share/icons/LyndsGO-Icon-Theme/
