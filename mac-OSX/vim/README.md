## Installation
v1.0  

Check out project to worksapce
```
cd ~
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
cd ~/Noa/mac-OSX/vim/packages/cscope-15.8b
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
Go to vim folder
```
cd ~/Noa/mac-OSX/vim
```
Copy plugin folder to .vim folder   
```
cp -r plugin ~/.vim 
cp -r bundle ~/.vim
```

### Color Scheme
Go to vim folder
```
cd ~/Noa/mac-OSX/vim
```
Copy colors folder to .vim folder
```
cp -r colors ~/.vim               
```


### .vimrc
Move .vimrc file to the home folder
```
cd ~/Noa/mac-OSX/vim/rc
mv .vimrc ~/
```

### Changlog
* 2016-10-21 File created (v1.0)
* 2017-09-18 File path changed (v1.1)
