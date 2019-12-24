" My plugin manager is Plug
call plug#begin('~/.local/share/nvim/plugged')
" Proyect tree plugin.
Plug 'scrooloose/nerdtree'
" HTML less painful 
Plug 'mattn/emmet-vim'
" Good indenting for HTML
Plug 'vim-scripts/indenthtml.vim'
" Color Schemes
Plug 'nlknguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
" VIM status line
Plug 'itchyny/lightline.vim'
" javascript support for vim
Plug 'pangloss/vim-javascript'
" TS support
Plug 'leafgarland/typescript-vim'
" respect .editorconfig files
Plug 'editorconfig/editorconfig-vim'
" Git NERDTree integration
Plug 'xuyuanp/nerdtree-git-plugin'
" Git changes tracker
Plug 'airblade/vim-gitgutter'
" surround 
Plug 'tpope/vim-surround'
" fuzzy file finder for vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Vue syntax hightlighting & lint
Plug 'posva/vim-vue'
Plug 'dense-analysis/ale'
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
set expandtab 
set tabstop=2
set softtabstop=0
set shiftwidth=2
set smarttab

" set termguicolors
syntax on
colorscheme onedark

" Map FZF to CtrlP
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-n> :Ag<CR>

" autocompletes common programming words
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" reduce vim update time to show git gutter changes faster
set updatetime=100
let g:ale_linters = {
			\ 'javascript': ['eslint'],
			\ 'typescript': ['tslint']
			\}
let g:ale_linters_explicit = 1
let g:ale_lint_delay = 1000

let g:vue_pre_processors = []
