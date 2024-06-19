#!/bin/sh
# Script para configurar monitores múltiples de casa y trabajo, ajustando adecuadamente las resoluciones
# procurando compatibilidad con la pantalla retina display del ala macbook pro 2014
# @autor Jonás Reyes / Tiktok & Telegram: @jonasroot
# Copyleft: Se permite la copia del script, ya sea sin ánimo de lucro o con fines comerciales
# siempre y cuando se respete su autoría y esta nota se mantenga.

# Verificando las pantalla conectadas
# Monitor LG Ultrawide 29 pulgadas, resolución nativa de 2560x1080, pero por pixeles muertos se le mantiene en 2480x1080
monitor_ultrawide_hdmi1=$(xrandr | grep -E "HDMI-1 connected 2560")
monitor_ultrawide_hdmi2=$(xrandr | grep -E "HDMI-2 connected 2560")
monitor_ultrawide_hdmi3=$(xrandr | grep -E "HDMI-3 connected 2560")

# monitor Apple 20 pulgadas, resolución 1680x1050
monitor_apple_hdmi1=$(xrandr | grep -E "HDMI-1 connected 1680")
monitor_apple_hdmi2=$(xrandr | grep -E "HDMI-2 connected 1680")
monitor_apple_hdmi3=$(xrandr | grep -E "HDMI-3 connected 1680")

# monitor Mincyt de 22 pulgadas y 1920x1080
monitor_clone_dp1=$(xrandr | grep -E "DP-1 connected 1920")
monitor_clone_dp2=$(xrandr | grep -E "DP-2 connected 1920")

pantalla_macbook_rd=$(xrandr | grep -E "eDP-1 connected primary 2560")

if [ -z "$pantalla_macbook_rd" ]; then
  echo "Pantalla Retina Display no conectada"
else
  echo "Pantalla Retina Display Conectada y Activada como primaria"
  echo "Configurando pantalla $pantalla_macbook_rd"
  xrandr --output eDP-1 --mode 2560x1600 --scale 1x1
fi


if [ -z "$monitor_apple_hdmi1" ]; then
  echo "Pantalla Apple no conectada"
else
  echo "Pantalla Apple Conectada"
  echo "Configurando pantalla $monitor_apple_hdmi1"
  xrandr --output HDMI-1 --mode 1680x1050 --scale 2x2 --above eDP-1
fi


if [ -z "$monitor_apple_hdmi2" ]; then
  echo "Pantalla Apple no conectada"
else
  echo "Pantalla Apple Conectada"
  echo "Configurando pantalla $monitor_apple_hdmi2"
  xrandr --output HDMI-2 --mode 1680x1050 --scale 2x2 --above eDP-1
fi


if [ -z "$monitor_apple_hdmi3" ]; then
  echo "Pantalla Apple no conectada"
else
  echo "Pantalla Apple Conectada"
  echo "Configurando pantalla $monitor_apple_hdmi3"
  xrandr --output HDMI-3 --mode 1680x1050 --scale 2x2 --above eDP-1
fi


if [ -z "$monitor_clone_dp1" ]; then
  echo "Pantalla Clone no conectada"
else
  echo "Pantalla Clone Conectada"
  echo "Configurando pantalla $monitor_clone_dp1"
  xrandr --output DP-1 --mode 1920x1080 --scale 2x2 --above eDP-1
fi


if [ -z "$monitor_clone_dp2" ]; then
  echo "Pantalla Clone no conectada"
else
  echo "Pantalla Clone Conectada"
  echo "Configurando pantalla $monitor_clone_dp2"
  xrandr --output DP-2 --mode 1920x1080 --scale 2x2 --above eDP-1
fi

if [ -z "$monitor_ultrawide_hdmi1" ]; then
  echo "Pantalla Ultrawide no conectada"
else
  echo "Pantalla Ultrawide Conectada"
  echo "Configurando pantalla $monitor_ultrawide_hdmi1"

# $(cvt 2480 1080 60) # Este comando solo es necesario cuando se desea obtener los valores para el --newmode correcto del comando xrandr.
$(xrandr --newmode "2480x1080_60.00"  223.50  2480 2640 2904 3328  1080 1083 1093 1120 -hsync +vsync)
$(xrandr --addmode HDMI-1 2480x1080_60.00)
$(xrandr --output HDMI-1 --mode 2480x1080_60.00 --scale 2x2 --right-of eDP-1)

fi


if [ -z "$monitor_ultrawide_hdmi2" ]; then
  echo "Pantalla Ultrawide no conectada"
else
  echo "Pantalla Ultrawide Conectada"
  echo "Configurando pantalla $monitor_ultrawide_hdmi2"

# $(cvt 2480 1080 60) # Este comando solo es necesario cuando se desea obtener los valores para el --newmode correcto del comando xrandr.
$(xrandr --newmode "2480x1080_60.00"  223.50  2480 2640 2904 3328  1080 1083 1093 1120 -hsync +vsync)
$(xrandr --addmode HDMI-2 2480x1080_60.00)
$(xrandr --output HDMI-2 --mode 2480x1080_60.00 --scale 2x2 --right-of eDP-1)

fi


if [ -z "$monitor_ultrawide_hdmi3" ]; then
  echo "Pantalla Ultrawide no conectada"
else
  echo "Pantalla Ultrawide Conectada"
  echo "Configurando pantalla $monitor_ultrawide_hdmi3"

# $(cvt 2480 1080 60) # Este comando solo es necesario cuando se desea obtener los valores para el --newmode correcto del comando xrandr.
$(xrandr --newmode "2480x1080_60.00"  223.50  2480 2640 2904 3328  1080 1083 1093 1120 -hsync +vsync)
$(xrandr --addmode HDMI-3 2480x1080_60.00)
$(xrandr --output HDMI-3 --mode 2480x1080_60.00 --scale 2x2 --right-of eDP-1)

fi
