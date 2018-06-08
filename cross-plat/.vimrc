set nocompatible
filetype off                     " required
set rtp+=~/.vim/bundle/vundle/   " set the runtime path to include Vundle and initialize
call vundle#rc()

" Let Vundle manage itself
Plugin 'gmarik/vundle'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/taglist.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'

" Color schemes
Plugin 'Lokaltog/vim-distinguished'

" Required, plugins available after
call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" Preference
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set colorcolumn=81                              " Over 80 characters prompt
set t_Co=256                                    " Support 256 colors in vim
set number                                      " view line number in default
set autochdir                                   " Auto loading ctags
set tags=tags;

" Display
syntax enable                                   " color scheme setting
colorscheme distinguished
let g:airline_theme='powerlineish'              " Set as default airline theme
let g:airline_powerline_fonts = 1               " Support powerline fonts in airline

" tag list setting
let Tlist_Use_Left_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 45

" Plugin indentline setting
let g:indent_guides_enable_on_vim_startup = 1   " enable indentLine when vim startup
let g:indentLine_char = '|'                     " indent line char, e.g. | ¦ ┆ │
let g:indentLine_color_term = 239               " indent line color
"let g:indentLine_bgcolor_term =                " indent line bg color

" ctrlp usage
" Press <c-t> to open selected entry

" Hotkey binding
nmap <F3>  :tabN        <CR>
nmap <F4>  :tabn        <CR>
nmap <C-t> :TlistToggle <CR>
