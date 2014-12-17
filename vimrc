" Tim Stella's vimrc

" nocompatible because we're in the 21st century
set nocompatible


"required for neobundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"List of Bundles here:
" You must add a submodule line to .gitmodules for each bundle
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'flazz/vim-colorschemes'
"" Color
NeoBundle 'tomasr/molokai'


call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" Neobundle configs
" vim-airline
let g:airline#extensions#tabline#enabled = 1
" Turn on syntax
syntax on

" Use case insensitive search, except when using capitals
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Always display the status line, even if only one window is displayed
set laststatus=2

" Line numbers
set number

"Indentation options
" 2 spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab

"Colors
colorscheme molokai


"Keybinds

map <C-n> :NERDTreeToggle<CR>
