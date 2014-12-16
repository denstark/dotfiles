" Tim Stella's vimrc

" nocompatible because we're in the 21st century
set nocompatible


"required for neobundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"List of Bundles here:
NeoBundle 'scrooloose/nerdtree'



call neobundle#end()
filetype plugin indent on
NeoBundleCheck

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



"Keybinds

map <C-n> :NERDTreeToggle<CR>
