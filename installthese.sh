#!/bin/sh

echo 'curl'
curl --version
if [ $? -ne 0 ]; then
	sudo apt install curl && sudo apt update
fi

echo 'native packages'
clear;
dpkg -s gcc
if [ $? -ne 0 ]; then
	echo | sudo apt-get install build-essential
fi

echo 'Vim'
clear;
vim --version
if [ $? -ne 0 ]; then
	echo | sudo apt-get install vim;
fi


echo 'Mutt'
clear;
mutt -v
if [ $? -ne 0 ]; then
	sudo apt-get install mutt;
fi

echo 'Git'
clear;
git --version
if [ $? -ne 0 ]; then
	sudo apt-get install git;
fi

echo 'pip3'
clear;
pip3 --version
if [ $? -ne 0 ]; then
	sudo apt-get install python3-pip;
fi

echo 'virtualenv'
clear;
virtualenv --version
if [ $? -ne 0 ]; then
	sudo pip3 install virtualenv;
fi

echo 'thefuck'
clear;
thefuck --version
if [ $? -ne 0 ]; then
	sudo pip3 install thefuck;
fi

echo 'linux-kernel'
clear;
dpkg -s libncurses5-dev git exuberant-ctags libssl-dev
if [ $? -ne 0]; then
	sudo apt install vim libncurses5-dev git exuberant-ctags libssl-dev
	sudo apt install gitk
	sudo apt install git-email
fi

echo 'Heroku CLI'
clear;
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh;

echo 'ls--'
clear;
cpan Term::ExtendedColor
git clone git://github.com/trapd00r/ls--.git
cd ls--
perl Makefile.PL
make && su -c 'make install'

cp ls++.conf $HOME/.ls++.conf

echo 'npm'
clear;
npm -v
if [ $? -ne 0 ]; then
	echo | sudo apt install npm
fi

echo 'nvm'
clear;
nvm --version
if [ $? -ne 0 ]; then
	wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
	source ~/.bashrc
	nvm install node
	nvm install --lts
fi

echo 'autojump'
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
source ~/.bashrc
if [ $? -ne 0 ]; then
	exit $?
fi

echo 'Linux tools'
clear;
dpkg -l 'linux-tools'
if [ $? -ne 0 ]; then
	v=`uname -r`
	echo | sudo apt-get install linux-tools-`${s/-generic/}`
	sudo apt-get install strace
fi

echo 'tldr'
clear;
tldr --version
if [ $? -ne 0 ]; then
	sudo npm install -g tldr
fi

echo 'Docker'
clear;
docker -v
if [ $? -ne 0 ]; then
	echo | sudo apt install docker.io
fi

echo 'Groff'
clear;
groff -v
if [ $? -ne 0 ]; then
	sudo apt install groff
fi

echo 'Doxygen'
clear;
doxygen --version
if [ $? -ne 0 ]; then
	echo | sudo apt install doxygen
fi

echo 'libgraph'
clear;
wget http://download.savannah.gnu.org/releases/libgraph/libgraph-1.0.2.tar.gz
tar -xvzf libgraph-1.0.2
cd libgraph-1.0.2
./configure
sudo make && make install
sudo cp /usr/local/lib/libgraph.* /usr/lib

echo 'ipfs'
# dpkg --print-architecture
wget https://dist.ipfs.io/go-ipfs/v0.4.16/go-ipfs_v0.4.16_linux-amd64.tar.gz
tar xvfz go-ipfs_v0.4.16_linux-amd64.tar.gz
sudo mv go-ipfs/ipfs /usr/local/bin/ipfs

echo 'twine'
twine --version
if [ $? -ne 0 ]; then
  echo | sudo apt install twine
fi

echo 'cmake'
cmake --version
if [ $? -ne 0 ]; then
	echo | sudo apt install cmake
fi

echo 'python-dev'
dpkg -s python-dev
if [ $? -ne 0 ]; then
	echo | sudo apt install python-dev
fi

echo 'LTTng and perf'
dpkg -s lttng-tools
if [ $? -ne 0 ]; then
	echo | sudo apt install lttng-tools
	echo | sudo apt install linux-tools-common
fi
