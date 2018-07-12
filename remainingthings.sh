#!/bin/bash

mv ~/setitup/dotfiles/.vimrc ~/.vimrc
mv ~/setitup/dotfiles/.muttrc ~/.muttrc
mv ~/setitup/dotfiles/.msmptrc ~/.msmptrc
mv ~/setitup/dotfiles/.gitconfig ~/.gitconfig
mv ~/setitup/dotfiles/.gdbinit ~/.gdbinit
mv ~/setitup/dotfiles/.esmptrc ~/.esmptrc
cp ~/setitup/man-pages/.* /usr/local/man/man8/.*
gzip /usr/local/man/man8/.*
