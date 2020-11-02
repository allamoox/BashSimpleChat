#!/bin/bash


####### TO COME OVER the TMUX PROBLEM ... SINCE I CAN'T SEND THE COMMAND INTO TMUX##########
#echo "please follow these steps in order... Step 1 Press 1 ... Step 2 press "ctrl" and "b" simultaneously ... step 3 press "ctrl" and "%" simultaneously"
#read UserInput
#if [ $UserInput = 1 ]
#then
#	`tmux`
#else
#	echo 3334
#fi
####################################################
<<1
MULTI LINE COMMENT BETTER THAN WRITTING # IN THE BEGENNING OF EVERY LINE.... The code below is to send a command into the tmux...
#tmux send-keys "echo 33" C-M

#tmux new \ split-window; send-keys "echo 33" C-M
1
# Below is the code to split the window and  echo the instructions into the tmux session

tmux new \;  split-window\; send-keys C-L C-M "cat R" c-m "nc -l -p 1337" C-M

#Need to clear the screen

