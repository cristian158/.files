#! bash

# short and easy script for reboot confirmation
reboot () {
    while true; do
        read -p "U sure reboot? " ans
        case $ans in
            [yY] | [yY][eE][sS])
                sudo reboot now
                echo Rebooting
                sleep 1
                break
                ;;
            [nN] | [nN][oO])
                echo Home sweet home
                sleep 1
                break
                ;;
            *)
                echo wut? >&2
        esac
    done
}

reboot
