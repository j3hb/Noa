# Noa in Mac OSX
v1.0
                                                                                                                                                              
## Package Installing
### Homebrew
Homebrew is a package management tool on Mac
First, we need to install homebrew by ruby
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
```
After showing message
```
Press RETURN to continue or any other key to abort 
```
Then, press the `return` key to continue.
The installation is complete after typing password.

### Packages
First, update homebrew packages list
```
brew update
```
Then, install packages
```
brew install git wget ctags bash-completion tmux
```

## Git & Git Flow
Init git repository
```
cd ~
mkdir Workspace
cd Workspace
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

## Vim Setting
Checkout the project
```
cd ~/Workspace
git clone https://github.com/chienhaolu1107/Noa.git
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
cd ~/Workspace/Noa/mac-OSX/vim/packages/cscope-15.8b/
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
cp ~/Workspace/Noa/mac-OSX/vim/plugin/*.vim . 
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
cp ~/Workspace/Noa/mac-OSX/vim/colors/*.vim . 
```

### .vimrc
Put .vimrc file to the home folder
```
cd ~/Worksapce/Noa/mac-OSX/vim/rc
cp .vimrc ~/
```

## Bash Profile
Put `.bash_profile` to home folder
```
cd ~
cp ~/Worksapce/Noa/mac-OSX/bash/.bash_profile .
```

## Changelog
* 2016-10-22 File created. (v1.0)
