#/bin/bash
##########################################################################################################################################################
#																			 #
#  ██████╗  █████╗ ███████╗██╗  ██╗    ███████╗██╗███╗   ███╗██████╗ ██╗     ███████╗     ██████╗██╗  ██╗ █████╗ ████████╗			         #
#  ██╔══██╗██╔══██╗██╔════╝██║  ██║    ██╔════╝██║████╗ ████║██╔══██╗██║     ██╔════╝    ██╔════╝██║  ██║██╔══██╗╚══██╔══╝		                 #
#  ██████╔╝███████║███████╗███████║    ███████╗██║██╔████╔██║██████╔╝██║     █████╗      ██║     ███████║███████║   ██║				         #
#  ██╔══██╗██╔══██║╚════██║██╔══██║    ╚════██║██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝      ██║     ██╔══██║██╔══██║   ██║				         #
#  ██████╔╝██║  ██║███████║██║  ██║    ███████║██║██║ ╚═╝ ██║██║     ███████╗███████╗    ╚██████╗██║  ██║██║  ██║   ██║				         #
#  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝     ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝				         #
#  ██████╗ ██╗   ██╗    ███████╗██████╗ ███████╗██████╗ ██████╗ ██╗███████╗     █████╗ ███╗   ██╗██████╗      █████╗ ███████╗███████╗███████╗███╗   ███╗ #
#  ██╔══██╗╚██╗ ██╔╝    ██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔══██╗██╔════╝██╔════╝██╔════╝████╗ ████║ #
#  ██████╔╝ ╚████╔╝     █████╗  ██████╔╝█████╗  ██║  ██║██║  ██║██║█████╗      ███████║██╔██╗ ██║██║  ██║    ███████║███████╗███████╗█████╗  ██╔████╔██║ #
#  ██╔══██╗  ╚██╔╝      ██╔══╝  ██╔══██╗██╔══╝  ██║  ██║██║  ██║██║██╔══╝      ██╔══██║██║╚██╗██║██║  ██║    ██╔══██║╚════██║╚════██║██╔══╝  ██║╚██╔╝██║ #
#  ██████╔╝   ██║       ██║     ██║  ██║███████╗██████╔╝██████╔╝██║███████╗    ██║  ██║██║ ╚████║██████╔╝    ██║  ██║███████║███████║███████╗██║ ╚═╝ ██║ #
#  ╚═════╝    ╚═╝       ╚═╝     ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═════╝ ╚═╝╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝     ╚═╝ #
#						https://github.com/allamoox/BashSimpleChat.git		 	                                         #
##########################################################################################################################################################

printf "\033c"
cat < ./banner
#####################COMMENT 1 TO WRITE  THE IF STATEMENT IN MULTI LINES WITHOUT ;#########################3
#[ ! tmux -V > /dev/null 2>&1 ]
#then
#    echo " OPS... You don't have tmux installed, please install tmux to be able to run this script"
 #   echo "For Debian based distro, please use apt-get install tmux"
  #  echo "For based distro, please use yum install tmux"
   # echo "For based distro, please use pacman install tmux"
#    echo "For other distros please google, install tmux 'your distro name'"
#echo 3333 
 #  exit 1
#fi
<<2
	COMMENT 2 THE IF STATMENT IS WORKING BUT NEED TO FIND A BETTER WAY TO DISPLAY IT AS BANNER
if ! tmux -V > /dev/null 2>&1; then

  	echo " OPS... You don't have tmux installed, please install tmux to be able to run this script"
	echo "For Debian based distro, please use apt-get install tmux"
	echo "For based distro, please use yum install tmux"
	echo "For based distro, please use pacman install tmux"
	echo "For other distros please google, install tmux 'your distro name'"
	exit 1
fi
2
#END OF 2ND COMMENT

if ! tmux -V > /dev/null 2>&1; then

	cat warnning
        exit 1
fi



PS3="Hello '$USER' Please chose one of the above options :- "
choice=("Press 1 for nc connection" "Press 2 for /dev/tcp connection" "Press 3 for xxxxx" "Press 4 to Exit")
select choice in "${choice[@]}"
do
    case "$choice" in
        "Press 1 for nc connection")
	    echo Listening for incomming connections on $port 
            tmux new \;  split-window\; send-keys C-L C-M "cat R" c-m "nc -l -p 1337" C-M
            PS1=$user:-
	    ;;
        "Press 2 for /dev/tcp connection")
            echo ".....Choice2......."
            ;;
        "Press 3 for xxxxx")
	    echo "......Choice3....."
            ;;
        "Press 4 to Exit")
	    echo "GoodBye!"
	    break
	    ;;
        *) echo "$REPLY is not a valid choice, Please choose a number between 1 and 4"
	    ;;
    esac
done
