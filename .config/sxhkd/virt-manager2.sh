#!/bin/bash

echo Hola Terrícolas
echo To start "default" network, you need permission
sleep 1
sudo virsh net-start default
sudo virsh start debian11
sleep 1
echo Succex
echo will close in 3
sleep 1
echo will close in 2
sleep 1
echo will close in 1
echo by
sleep 1
