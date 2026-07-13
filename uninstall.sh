#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]; then
    echo "ES: Tienes que ejecutar este script como root (sudo)"
    echo "EN: You need to execute this script as root (sudo)"
    exit 1
fi

echo "ES: Desnstalando tema de iconos..."
echo "EN: Uninstalling icon theme..."

rm -rf /usr/share/icons/LyndsGO-Icon-Theme/
