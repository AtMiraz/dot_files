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
" Linting
Plug 'dense-analysis/ale'
" Highlight CSS colors by name / hex code
Plug 'gorodinskiy/vim-coloresque'
" Git integration
Plug 'tpope/vim-fugitive'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Easier comments
Plug 'tomtom/tcomment_vim'
" AIO syntax highlighting
Plug 'sheerun/vim-polyglot'
call plug#end()

" Enables switching buffers without saving to disk
set hidden
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

set termguicolors " comment this if using WSL
syntax on
colorscheme onedark

" Map FZF to CtrlP
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-n> :Ag<CR>

" autocompletes common programming symbols
autocmd FileType vue,javascript,typescript inoremap " ""<left>
autocmd FileType vue,javascript,typescript inoremap ' ''<left>
autocmd FileType vue,javascript,typescript inoremap ( ()<left>
autocmd FileType vue,javascript,typescript inoremap [ []<left>
autocmd FileType vue,javascript,typescript inoremap { {}<left>
autocmd FileType vue,javascript,typescript inoremap {<CR> {<CR>}<ESC>O
autocmd FileType vue,javascript,typescript inoremap {;<CR> {<CR>};<ESC>O

" reduce vim update time to show git gutter changes faster
set updatetime=100
" uncomment if lightline is not correctly
" set laststatus=2

" show trailing white spaces on normal mode
highlight ExtraWhiteSpace ctermbg=red guibg=red
match ExtraWhiteSpace /\s\+$/
" don't paint trailing white spaces while on insert mode
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Replace '@' webpack alias to 'src/'
set includeexpr=substitute(v:fname,'^@/','src/','')
set suffixesadd=.js,.vue,.scss,.css
set isfname+=@-@

let g:ale_linters_explicit = 1
let g:ale_lint_delay = 1000

let g:ale_linters = {
	\'javascript': ['eslint'],
	\'typescript': ['tslint'],
	\'vue': ['eslint'],
	\'jsx': ['eslint'],
\}

let g:lightline = {
	\'active': {
	\	'left': [ ['mode', 'paste'],
	\	[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\},
	\'component_function': {
	\	'gitbranch': 'fugitive#head'
	\},
\}
