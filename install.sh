#!/bin/bash

# Mensaje de inicio para saber si se está ejecutando
echo "Ejecutando install.sh..." >> /workspaces/.codespaces/.persistedshare/install.log

# Verificar si el archivo .aliases existe
if [ -f /workspaces/.codespaces/.persistedshare/dotfiles/.aliases ]; then
    echo "Archivo .aliases encontrado, añadiendo a .bashrc" >> /workspaces/.codespaces/.persistedshare/install.log
    echo 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' >> ~/.bashrc
    source ~/.bashrc
else
    echo "Error: Archivo .aliases no encontrado" >> /workspaces/.codespaces/.persistedshare/install.log
fi
