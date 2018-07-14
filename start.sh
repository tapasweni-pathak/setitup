#!/bin/bash

echo $(uname -r)

. ./installthese.sh

## TODO: ADD CLI tool or commands to put id_rsa.pub to GitHub, is manual atm
echo "setup for GitHub Auth"
echo | ssh-keygen -t rsa -b 4096 -C "tapaswenipathak@gmail.com"
sudo apt install xclip
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Time to add id_rsa.pub to GitHub account."
ssh -T git@github.com

. ./gitclonethese.sh
. ./remainingthings.sh

welcome(){


echo "
===================================
        sudo make it ready!
===================================
"
for file in $(ls ./)
do
    if [ $file != installthese.sh ]
    then
        echo $file
    fi

done;
}

