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

" Statusline style setting------------------------------------------------------------------------------------------
" Color highlighting style
highlight User1 ctermfg=white ctermbg=darkgray
highlight User2 ctermfg=darkyellow ctermbg=white
highlight User3 ctermfg=white ctermbg=darkyellow
highlight User4 ctermfg=darkgray ctermbg=white
highlight User5 ctermfg=white ctermbg=darkblue
highlight User6 ctermfg=white ctermbg=green

" Default highlighting style
set laststatus=2
set statusline=%5*JasonCH_Lu\ %1*%f\ %2*(%l/%L,%c)\ %3*%P\ %4*%=%m%y[%{&encoding}:%{&fileformat}]

" Change highlighting based on mode
if version >= 700
  au InsertLeave * set statusline=%5*JasonCH_Lu\ %1*%f\ %2*(%l/%L,%c)\ %3*%P\ %4*%=%m%y[%{&encoding}:%{&fileformat}]
  au InsertEnter * set statusline=%6*INSERTMODE\ %1*%f\ %2*(%l/%L,%c)\ %3*%P\ %4*%=%m%y[%{&encoding}:%{&fileformat}]
endif
"-------------------------------------------------------------------------------------------------------------------


" Current plugin list-----------------------------------------------------------------------------------------------
" 1. NERD_tree (NERD_tree.vim) -> file list management
" 2. Source explorer (srcexpl.vim) -> Quick explore variable definition
" 3. taglist (taglist.vim)
" 4. Trinity (trinity.vim) -> Integrate 3 plugin above, let vim like source insight
" 5. trailing whitespace (trailing-whitespace.vim) -> display trailing whitespace as red color
" 6. ctrlp (ctrlp.vim) -> quick search to open file by typing Ctrl+P

" Plugin ctrlp setting
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMixed'

" Plugin hot key binding

" 1. Open and close all trinity plugins (NERD, srcexpl, taglist)
nmap <C-a> :TrinityToggleAll           <CR>
" 2. Open and close srcexpl.vim
nmap <C-e> :TrinityToggleSourceExplorer<CR>
" 3. Open and close the taglist.vim
nmap <C-t> :TrinityToggleTagList       <CR>
" 4. Open and close the NERD_tree.vim
nmap <C-n> :TrinityToggleNERDTree      <CR>
" 5. Move to previous tab in vim
nmap <F3>  :tabN                       <CR>
" 6. Move to next tab in vim
nmap <F4>  :tabn                       <CR>
"-------------------------------------------------------------------------------------------------------------------
