#!/bin/bash

# Intro
echo Hola Terrícolas
echo ''
sleep 1

# Show list of all Networks active or not
echo To show the list of Networks u need permission
echo ''
sleep 1
sudo virsh net-list
sleep 1

# Decide to start network or procede to domain
startNet () {
    while true; do
        read -p 'Wanna start something new? (y/n) ' answer
        case "$answer" in
            [yY])
                read -p 'Name? ' net
                sudo virsh net-start $net
                break
                ;;
            [nN])
                echo Skipping!
                break
                ;;
            *)
                echo 'Me no understand' >&2
        esac
    done
}

startNet
sleep 1
echo ''

# Elegible domains
echo Available domains:
echo ''
sudo virsh list --all

# Starting selected domain
read -p "Pick your weapon: " chosendomain
startinge=$(sudo virsh start $chosendomain)
if [ $starting ]
then
    echo Starting $chosendomain
fi

#Bye
sleep 1
echo Succex
echo will close in 3
sleep 1
echo will close in 2
sleep 1
echo will close in 1
echo by
sleep 1


#### virsh net-destroy                  // stop a network
#### virsh net-list                     // list networks
#### virsh destroy                      // stop a domain 
