# CustomDisplay
---
## Personaliza la resolución de tu monitor
### @Autor: Jonas A. Reyes C.
Script en Bash organizado en 2 archivos (quizás lo modifique más adelante).
El propósito es redefinir o personalizar la resolución y tamaño de la pantalla, esto como una alternativa viable cuando por ejemplo mueren franjas de pixeles al inicio o final de la pantalla, lo que puede mantener en uso el monitor y quitando la molesta invisilización del contenido.

En mi caso tengo un viejo monitor ultrawide LG (2560px / 1080px) sin embargo han muerto los primeros 80 pixeles de mi pantalla, por lo que deseo mentener en buen uso los restante 1480 pixeles....

Si te ha sido de utilidad este script recuerda comentarme, si tienes sugerencias soy todo oidos.

PD: Pense que era obvio pero puedo estar equivocado: Este script es para usuarios de Sistemas Operativos GNU/Linux que usan XORG. 
Para quienes usan Wayland, Hyprland, etc, debe ser más fácil lograr esto, no requiere de un scrip auxiliar como el mío, solo debe realizar los ajustes en se archivo de configuración de su Gestor de Gráfico, por ejemplo:

```bash:
$ nvim .config/hypr/hyprland.conf
	monitor=HDMI-3,2480x1080@60,81x0,1

```

