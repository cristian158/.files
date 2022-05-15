#! /bin/bash

## get SSID of current connected network
networkaa="$(iw dev | grep ssid | awk '{print $2}')"

## add .nmconnection to the name
konex=$networkaa".nmconnection"

## print lsat part of connection's psk

#sudo tail -n 12 /etc/NetworkManager/system-connections/$konex | grep psk

sudo bat -f -r 16 /etc/NetworkManager/system-connections/$konex | grep psk
