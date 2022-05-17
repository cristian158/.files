#!/bin/bash

nmcli device wifi list

echo Choose network:
read ssid

echo Password?
read pass

nmcli device wifi connect $ssid password $pass
