#! /bin/sh

killall picom
picom --experimental-backends -b &
/usr/bin/nitrogen --random --set-zoom --set-color=[#4c566a] &
