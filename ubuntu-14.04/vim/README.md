## Installation
v1.0  

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

### Changlog
* 2016-10-21 File created (v1.0)
