set runtimepath+=~/.vim_runtime
set nocp
syntax enable
execute pathogen#infect()
execute pathogen#helptags()
syntax on
se rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Bundle '907th/vim-auto-save'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'danro/rename.vim'
Plugin 'thaerkh/vim-indentguides'
Plugin 'CursorLineCurrentWindow'
Plugin 'luochen1990/rainbow'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

let g:go_version_warning = 0
let g:auto_save = 1

set mouse=a

set hidden
nnoremap <C-P> :bnext<CR>
nnoremap <C-O> :bprev<CR>
set foldmethod=syntax
set foldlevel=99
set foldcolumn=1
let g:auto_origami_foldcolumn=2
let g:auto_origami_foldcolumn=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_extensions#tabline#show_buffers = 1
let g:airline_theme='angr'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor
"colorscheme monokai
set number

let g:indentguides_spacechar = '|'
let g:indentguides_tabchar = '▏'
let g:indentguides_firstlevel = get(g:, 'indentguides_firstlevel', 1)

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set cursorline

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

filetype plugin on
filetype indent on

set autoread

nmap <leader>w :w!<cr>

set shiftwidth=4
set tabstop=4
set smarttab

let g:rainbow_active = 1

set ai "Auto indent
set si "Smart indent

set wrap "Wrap linesexecute pathogen#infect()execute pathogen#infect()
" set textwidth=80
hi foldcolumn ctermfg=lightgray

set numberwidth=1
set linebreak
let g:tex_conceal=""

au BufRead,BufNewFile *.txt set textwidth=80

au BufRead,BufNewFile *.gnu set filetype=gnuplot
" au BufRead,BufNewFile *.html set filetype=html

" au BufRead,BufNewFile *.py set filetype=python
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard
:iabbrev </ </<C-X><C-O>
