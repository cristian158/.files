#!/bin/sh

systemctl --user import-environment DISPLAY
setxkbmap -layout us,es -option grp:alt_shift_toggle
sudo loadkeys -d &

picom --experimental-backends -b &
xrandr --output LVDS1 --mode 1366x768 &
dunst &
sxhkd &


exec bspwm
