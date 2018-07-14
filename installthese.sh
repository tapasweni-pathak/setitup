#!/bin/sh

## Install curl
sudo apt install curl && sudo apt update

## Install native packages
clear;
sudo apt-get install -y build-essential

## Install Vim
clear;
sudo apt-get install -y vim;

## Install sublime
clear;
sudo add-apt-repository ppa:webupd8team/sublime-text-3;
sudo apt-get install sublime-text-installer;

## Install Mutt
sudo apt-get install mutt;

## Install Git
clear;
sudo apt-get install git;

## Install pip3
clear;
sudo apt-get install python3-pip;

## Install virtualenv
clear;
sudo pip3 install virtualenv;

## Install thefuck
clear;
sudo pip3 install thefuck;

## For linux-kernel
clear;
sudo apt-get install vim libncurses5-dev gcc make git exuberant-ctags libssl-dev
sudo apt-get install gitk
sudo apt-get install git-email

## Install Heroku CLI
clear;
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh;

## Install ls--
clear;
cpan Term::ExtendedColor
git clone git://github.com/trapd00r/ls--.git
cd ls--
perl Makefile.PL
make && su -c 'make install'

cp ls++.conf $HOME/.ls++.conf

## Install nodejs, npm
clear;
sudo apt-get install nodejs
sudo apt-get install npm
sudo npm install -g n
sudo n latest
sudo n current || sudo n lts

## Install nvm
clear;
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc

## Install VLC
clear;
sudo apt-get install vlc

## Install autojump
clear;
sudo apt-get install autojump
if [ $? -ne 0 ]; then
	sudo apt-get --force-yes remove python3-pkg-resources
	sudo apt-get --force-yes remove python3-setuptools
	sudo apt autoremove
fi
sudo apt-get install python3-setuptools
sudo apt-get install autojump
echo "source /usr/share/autojump/autojump.bash" >> ~/.bashrc
sudo chmod 755 /usr/share/autojump/autojump.bash
sudo apt install bashdb
source ~/.bashrc
if [ $? -ne 0 ]; then
	exit $?
fi

## Install Linux tools
clear;
v=`uname -r`
sudo apt-get install linux-tools-`${s/-generic/}` -y
sudo apt-get install strace

## Install tldr
clear;
sudo npm install -g tldr

## Install Docker
clear;
echo | sudo apt install docker.io

## Install Groff
clear;
sudo apt install groff

## Install f.lux
echo | sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt update
echo | sudo apt-get install fluxgui

## Install libgraph
wget http://download.savannah.gnu.org/releases/libgraph/libgraph-1.0.2.tar.gz
tar -xvzf libgraph-1.0.2
cd libgraph-1.0.2
./configure
sudo make
sudo make install
sudo cp /usr/local/lib/libgraph.* /usr/lib

## TODO: Pipe echo wherever needed, no input from user should be required
