" Tab with 4 space width
set tabstop=4
set expandtab

" Support 256 colors in vim
set t_Co=256

" Auto loading ctags
set autochdir
set tags=tags;

" Color scheme 
syntax enable
colorscheme distinguished

" Plugin trinity setting (Make vim like source insight)

" Open and close all the three plugins on the same time
nmap <C-F6> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <C-F7> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <C-F8> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <C-F9> :TrinityToggleNERDTree<CR>
