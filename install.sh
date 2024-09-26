#!/bin/bash

# Mensaje de inicio para saber si se está ejecutando
echo "Ejecutando install.sh..."

# Verificar si el archivo .aliases existe
if [ -f /workspaces/.codespaces/.persistedshare/dotfiles/.aliases ]; then
    echo "Archivo .aliases encontrado, añadiendo a .bashrc"
    
    # Comprobar si la línea ya existe en .bashrc
    if grep -qxF 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' ~/.bashrc; then
        echo "La fuente del archivo .aliases ya está en .bashrc"
    else
        echo "Añadiendo fuente de .aliases a .bashrc"
        echo 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' >> ~/.bashrc
    fi
    source ~/.bashrc
else
    echo "Error: Archivo .aliases no encontrado"
fi
