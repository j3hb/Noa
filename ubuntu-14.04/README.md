# Noa in Ubtuntu 14.04
v1.0

## Package Installing
First, upgrade the package list
```
sudo apt-get upgrade -y
```
Second, update the package list
```
sudo apt-get update -y
```
Install required packages
```
sudo apt-get install vim ssh git git-flow svn mtd-utils tftp tftpd xinetd libncurses5-dev ctags
```

## Shell Setting
On ubuntu,
`/bin/dash` is used which does not support `source`.
We need to modify it !  
```
sudo rm /bin/sh
sudo ln -s /bin/bash /bin/sh
```

## Start up Setting
We add startup task to `/etc/init.d/rc.local`   
If build environment is VM, this can mount share folder 
```
mount -t vboxsf VMShare /home/jason/VMShare
```
Network manager is annoying, need to shutdown
```
stop network-manager
```

## Vim Setting
Check out project to worksapce
```
cd ~
mkdir Workspace
cd Workspace
git clone https://github.com/chienhaolu1107/VimTools.git
```

### Ctags
Create ctags file, this may take a long time  
```
cd <source code folder>
ctags -R *
```  

Using `Ctrl-]` and `Ctrl-o` to look up function definition

### Cscope
Install cscope command
```
cd ~/Workspace/VimTools
./configure
make
make install
```
Check the version of cscope  
```
/use/local/bin/cscope --version
```
Create cscope.out file, this may take a long time
```
cd <source code folder>
cscope -Rbq
```  

### Plugin
Create plugin folder
```
cd ~/.vim
mkdir plugin
```
Put plugin file to the folder   
```
cd ~/.vim/plugin   
cp ~/Workspace/VimTools/plugin/* . 
```

### Color Scheme
Create colors folder
```
cd ~/.vim
mkdir colors
```
Put color scheme file to the folder
```
cd ~/.vim/colors
cp ~/Workspace/VimTools/colors/* . 
```

### .vimrc
Move .vimrc file to the home folder
```
cd VimTools/rc
mv .vimrc ~/
```

## Git & Git Flow
Init git repository
```
cd ~/Workspace
git init
git config --global user.name "Jason Lu"
git config --global user.email chienhaolu1107@gmail.com
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global alias.history "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
```
Check config list  
```
git config --list
```
Git flow configuration
```
cd ~/Workspace
git clone https://github.com/bobthecow/git-flow-completion.git
cd git-flow-completion
sudo cp git-flow-completion.bash /etc/bash_completion.d/
```
Then, restart the terminal

## TFTP Setting
Create the TFTP folder
```
sudo mkdir /tftp
sudo chmod -R 777 /tftp
```
Put following entries to `/etc/xinetd.d/tftp`
```
service tftp
{
protocol        = udp
port            = 69
socket_type     = dgram
wait            = yes
user            = nobody
server          = /usr/sbin/in.tftpd
server_args     = /tftp
disable         = no
}
```
Restart xinet daemon  
```
sudo /etc/init.d/xinetd restart
```

## Changelog
* 2016-10-21 File created. (v1.0)
