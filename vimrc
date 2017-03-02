
filetype off                  " required

" Editor settings
syntax enable
set number
set ruler
set cursorline
set nocompatible              " be iMproved, required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'git://github.com/jiangmiao/auto-pairs.git'
Plugin 'terryma/vim-multiple-cursors'

" Vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'maksimr/vim-jsbeautify'
" Plugin 'wincent/command-t'
Plugin 'wavded/vim-stylus'

call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on
filetype indent on

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
set laststatus=2

" Search stuff
set incsearch
set ignorecase

" Tab settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab
set nowrap

" Colorscheme
colorscheme onedark

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntasic syntax checkers
let g:syntastic_javascript_checkers = ['eslint']

" Syntax highlighting for handlebars
au BufReadPost *.hbs set syntax=mustache
autocmd BufNewFile,BufRead *.styl set filetype=stylus

" Curser formatting
" highlight Cursor guifg=grey guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10
" highlight Cursor ctermbg=Green
