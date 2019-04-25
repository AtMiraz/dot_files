" My plugin manager is Plug
call plug#begin('~/.local/share/nvim/plugged')
" Proyect tree plugin.
Plug 'scrooloose/nerdtree'
" Use rails commands inside vim
Plug 'tpope/vim-rails'
" HTML less painful 
Plug 'mattn/emmet-vim'
" Good indenting for HTML
Plug 'vim-scripts/indenthtml.vim'
" Color Schemes
Plug 'ayu-theme/ayu-vim'
Plug 'nlknguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
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
" Git changes tracker
Plug 'airblade/vim-gitgutter'
" surround 
Plug 'tpope/vim-surround'
" fuzzy file finder for vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"linting
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'steelsojka/deoplete-flow'
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

" Ayu theme config
set termguicolors
let ayucolor="nord"
colorscheme ayu

" Map FZF to CtrlP
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-n> :Ag<CR>

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
let g:airline_theme = 'papercolor'
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
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#flow#flow_bin = 'flow' 
let g:EditorConfig_core_mode = 'external_command'
