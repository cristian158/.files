#! /bin/sh

killall picom
picom --experimental-backends -b &
nitrogen --set-zoom --random --set-color=[#4c566a] &
