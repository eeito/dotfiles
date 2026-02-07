#!/bin/bash

# Termina instâncias de barras em execução
killall -q polybar

# Espera até que os processos terminem
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Inicia a Polybar usando o arquivo de configuração
polybar -c ~/.config/polybar/config.ini mybar & # Substitua 'minha_barra' pelo nome da seção no seu config.ini
