" My plugin manager is Plug
call plug#begin('~/.vim/plugged')
" Proyect tree plugin.
Plug 'scrooloose/nerdtree'
" Use rails commands inside vim
Plug 'tpope/vim-rails'
" HTML less painful 
Plug 'mattn/emmet-vim'
" Good indenting for HTML
Plug 'vim-scripts/indenthtml.vim'
" Color Schemes
Plug 'flazz/vim-colorschemes'
" CtrlP fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" visual studio dark theme
Plug 'tomasiser/vim-code-dark'
" git status line
Plug 'vim-airline/vim-airline'
" javascript support for vim
Plug 'pangloss/vim-javascript'
" typescript support for vim
Plug 'leafgarland/typescript-vim'
" Plugin for JS libraries
Plug 'othree/javascript-libraries-syntax.vim'
" respect .editorconfig files
 Plug 'editorconfig/editorconfig-vim'
" Git NERDTree integration
Plug 'xuyuanp/nerdtree-git-plugin'
" airline themes
Plug 'vim-airline/vim-airline-themes'
" Fugitive vim for git integration
Plug 'tpope/vim-fugitive'

call plug#end()

" Displays the number of lines the file has
set number
" Displays the number of lines relative to where you are, the line where you
" have the cursor displays the actual line, then from top and bottom it
" displays the relative number, makes it easier to move around the editor.
set relativenumber
" Self explanatory
set nobackup
set nowritebackup
set noswapfile
" Intendation, tab is 2 spaces.
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
colorscheme codedark

" CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" airline configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0 
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message = ''
" symbols for airline needs powerline-fonts to be installed
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_powerline_fonts = 1
" Airline color scheme
let g:airline_theme = 'codedark'
