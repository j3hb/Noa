#!/bin/bash

# upgrade the package list
sudo apt-get upgrade -y
# update the package list
sudo apt-get update -y
# install required packages
sudo apt-get install vim ssh git git-flow svn mtd-utils tftp tftpd xinetd libncurses5-dev exuberant-ctags cscope tmux -y
