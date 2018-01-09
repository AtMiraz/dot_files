" My plugin manager is Plug
call plug#begin('~/.vim/plugged')
" Proyect tree plugin.
Plug 'scrooloose/nerdtree'
" Use rails commands inside vim
Plug 'tpope/vim-rails'
" HTML less painful 
Plug 'mattn/emmet-vim'
" Good indenting for HTML
Plug 'indenthtml.vim'
" Color Schemes
Plug 'flazz/vim-colorschemes'
call plug#end()

" Displays the number of lines the file has
set number
" Displays the number of lines relative to where you are, the line where you
" have the cursor displays the actual line, then from top and bottom it
" displays the relative number, makes it easier to move around the editor.
set relativenumber
" Self explanatory
set autoindent
set tabstop=2
colorscheme pablo
