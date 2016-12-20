## Plugin User Manual
v1.0  
The file tells how to use plugin during vim editing 

### Trinity
Trinity is a plugin to manage  
1. Source Explorer  
2. Tag List  
3. NERD-Tree

First, put all `*.vim` plugin to `~/.vim/plugin` folder  
Then, put following entries to `.vimrc`
```
" Open and close all the three plugins on the same time
nmap <C-F6> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <C-F7> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <C-F8> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <C-F9> :TrinityToggleNERDTree<CR>
``` 

This is hot key of trinity plugin during vim editing  
`Ctrl-F6` to open or close all windows of plugin  
`Ctrl-F7` to open or close the window of source explorer plugin  
`Ctrl-F8` to open or close the window of  taglist plugin  
`Ctrl-F9` to open or close the window of NERD-Tree plugin

Every can switch each other by typing  
`Ctrl-w`+`h`: switch left  
`Ctrl-w`+`j`: switch down  
`Ctrl-w`+`k`: switch up  
`Ctrl-w`+`l`: switch right
     
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

### Changelog
* 2016-10-21 File created (v1.0)
