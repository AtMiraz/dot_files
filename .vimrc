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
set autoindent
set tabstop=2
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
colorscheme brogrammer 
