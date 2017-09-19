## Plugin User Manual
v1.0  
The file tells how to use plugin during vim editing 

### Plugin list
1. Trinity
2. Source Explorer
3. Tag List
4. NERD-tree
5. Autoload-cscope
6. trailing whitespace
7. ctrlp

### Trinity
Trinity is a plugin to integrate 
1. Source Explorer  
2. Tag List  
3. NERD-Tree

This is hot key of trinity plugin during vim editing  
`Ctrl-a` to open or close all windows of plugin  
`Ctrl-e` to open or close the window of source explorer plugin  
`Ctrl-t` to open or close the window of taglist plugin  
`Ctrl-n` to open or close the window of NERD-Tree plugin

Every can switch each other by typing  
`Ctrl-w`+`h`: switch left  
`Ctrl-w`+`j`: switch down  
`Ctrl-w`+`k`: switch up  
`Ctrl-w`+`l`: switch right
`Ctrl-w`+`w`: switch to the next
     
#### Source Explorer
Used to show definition.  
When cursor move to the variable, function or marco,  
the define would display on this window (down). 

#### Tag List
Used to find variable, function or marco.  
When switch to the window (left) and choose one parameter,  
the cursor would move to function definition.

#### NERD-Tree
Used to show file list.  
When switch to the window (right) and choose one file,   
the file will open by typing `O`. 

### Autoload-cscope
While editing `.c``.cpp``.h` files,  
`cscope.out` can be loaded automatically.

### trailing whitespace
Display trailing whitespace as red color.

### ctrlp
Basic usage
`Ctrl`+`p`: open find file mode
`Esc`: close find file mode
`:CtrlPBuffer`: go to find buffer file mode
`:CtrlPMRU`: go to find MRU file mode
`:CtrlPMixed`: search in Files, Buffers and MRU files at the same time

After input search name
`Ctrl`+`x`: open the selected entry in a new split (horizontal)
`Ctrl`+`v`: open the selected entry in a new split (vertical)
`Ctrl`+`t`: open the selected entry in a new tab
`gt`: go to next tab
`gT`: go to previous tab

### Changelog
* 2016-10-21 File created (v1.0)
* 2017-09-19 Key-binding changed, new plugin (v1.1)
