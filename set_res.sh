#!/bin/bash

modeline="netv2_1920x1080 148.500 1920 2008 2052 2200 1080 1084 1089 1125 +hsync +vsync"
xrandr --newmode $modeline
modename="$(echo ${modeline%% *})"
xrandr --addmode default $modename
xrandr --output default --mode $modename
