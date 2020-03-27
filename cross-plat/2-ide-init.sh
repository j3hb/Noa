#!/bin/bash

# move vim and tmux config file to home folder
cp .vimrc .tmux.conf ~

mkdir -p ~/ws
cd ~/ws
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
vim +PluginInstall +qall

# Once installed, configure your terminal to use these fonts.
# For GNOME Terminal, this can be done in Edit > Profile Preferences > General.
# choose `Inconsolata for Powerline Medium` as font style
