#!/bin/bash

# Diretório onde estão seus wallpapers
WALLPAPER_DIR="$HOME/Walls"

# Inicia o daemon do swww se já não estiver rodando
if ! pgrep -x "awww-daemon" > /dev/null
then
    awww-daemon &
    sleep 1
fi

# Loop infinito para trocar o wallpaper
while true; do
    # Seleciona uma imagem aleatória da pasta
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)

    # Aplica o wallpaper com uma transição suave
    awww img "$WALLPAPER" --transition-type random --transition-duration 2

    # Aguarda 5 minutos (300 segundos)
    sleep 300
done

