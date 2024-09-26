#!/bin/bash

# Asegurarse de que el archivo .aliases existe y se puede cargar
if [ -f /workspaces/.codespaces/.persistedshare/dotfiles/.aliases ]; then
    echo "Sourcing aliases from dotfiles"
    grep -qxF 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' ~/.bashrc || echo 'source /workspaces/.codespaces/.persistedshare/dotfiles/.aliases' >> ~/.bashrc
fi
