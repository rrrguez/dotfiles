#!/bin/bash

# Mensaje de inicio para saber si se está ejecutando
echo "Ejecutando install.sh..."

# Verificar si el archivo .aliases existe
if [ -f /workspaces/.codespaces/.persistedshare/dotfiles/.aliases ]; then
    echo "Archivo .aliases encontrado, añadiendo a .bashrc"
    echo 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' >> ~/.bashrc
    source ~/.bashrc
else
    echo "Error: Archivo .aliases no encontrado"
fi
