#!/bin/sh

systemctl --user import-environment DISPLAY
setxkbmap -layout us,es -option grp:alt_shift_toggle

#pgrep -x sxhkd > /dev/null || sxhkd &
nm-applet --indicator &
sxhkd &
xrandr --output LVDS1 --mode 1366x768 &
dunst &

exec bspwm

