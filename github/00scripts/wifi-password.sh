#!usr/bin/env bash

###################################################################
###                                                             ###
###    Little script to get password of current wifi password   ###
###                                                             ###
###################################################################

## get SSID of current connected network
network="$(iw dev | grep ssid | awk '{print $2}')"
    ### iw: show manipulate wireless devices and their configs
    ### dev: network interface
    ### grep ssid: just take the ssid part
    ### awk: pattern scanning and processing language

## add string ".nmconnection" to the network name
konex=$network".nmconnection"

## print last part of connection's psk
sudo bat -f -r 16 /etc/NetworkManager/system-connections/$konex | grep psk

#sudo tail -n 12 /etc/NetworkManager/system-connections/$konex | grep psk

