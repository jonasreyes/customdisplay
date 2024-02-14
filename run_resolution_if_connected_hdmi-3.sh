#! /bin/bash

# Script que modifica la resolución de la pantalla cuando confirma que mi monitor LG está conectado
# en este caso se aplica una resolución no convencional ya que el monitor presenta una franja de 
# 100px muertos en el lado izquierdo.

# Especificamos en nombre de nuestro monitor problemático:
monitor_nombre="HDMI-3"

# Verificamos si el monitor está conectado
monitor_conectado=$(xrandr | grep -c "$monitor_nombre connected")

# Si la función anterior devuelve 1, sera confirmado como conectado el monitor, si devuelve 0 significa
# que no está conectado.
if [[ $monitor_conectado == 1 ]]; then
	echo "El monitor $monitor_nombre se encuentra conectado."
	display_kumda_ultrawide_lg.sh

else
	echo "El monitor $monitor_nombre no está connectado"
fi
