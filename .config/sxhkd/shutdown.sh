#! bash

# short and easy script for shutdown confirmation
shutdown () {
    while true; do
            read -p "U sure shutdown? " ans
            case $ans in
                [yY] | [yY][eE][sS])
                    shutdown now
                    echo Bye bye
                    sleep 1
                    break
                    ;;
                [nN] | [nN][oO])
                    echo Make up your mind, please
                    sleep 2
                    break
                    ;;
                *)
                    echo wut? >&2
            esac
    done
}

shutdown
