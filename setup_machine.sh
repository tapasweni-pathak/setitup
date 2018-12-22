#!/bin/bash

echo 'system info'
echo $(uname -a)
echo 'cpu architecture'
echo $(dpkg --print-architecture)
echo 'cpu'
echo $(cat /proc/cpuinfo)

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

git clone git@github.com:jeaye/stdman.git
cd stdman && ./configure && make install

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

if [ "$(uname)" == "Darwin" ]; then
	sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	mkdir ~/.npm
	npm config set prefix '~/.npm'
	export PATH=~/.npm/bin:$PATH
	source ~/.profile
fi

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

