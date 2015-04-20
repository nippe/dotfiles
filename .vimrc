set tabstop=2
set number
set ruler
set mouse=a


syntax off
filetype plugin indent off

 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif
 
 if has('vim_starting')
 	set nocompatible               " Be iMproved
 
 	" Required:
 	set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

set nocompatible  

set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree.git'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

syntax on
filetype plugin indent on

" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

