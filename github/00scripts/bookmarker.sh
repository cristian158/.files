#! /bin/bash

# nano cmd alone works ## (no sé qué quice decir)
# added parafernalia for interactivity

while true; do
	read -p "
  Wanna add link? Y/N " ans
	case $ans in
	 [yY] | [yY][eE][sS])
		vim "/home/manjar/Documents/Programming/HTML/Sites_Collection/Tech.html"
    echo "
    ##############
    ##   Done   ##
    ##############"
    break
		;;
	 [nN] | [nN][oO])
		echo '
    ====== BYE ======'
		break
		;;
	 *)
		echo 'Nigga pls' >&2
	esac
done

