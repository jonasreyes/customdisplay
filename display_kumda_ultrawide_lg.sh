#!/bin/sh
# $(cvt 2480 1080 60)
$(xrandr --newmode "2480x1080_60.00"  223.50  2480 2640 2904 3328  1080 1083 1093 1120 -hsync +vsync)
$(xrandr --addmode HDMI-3 2480x1080_60.00)

xrandr --output HDMI-3 --primary --mode 2480x1080_60.00 --pos 0x0 --rotate normal
