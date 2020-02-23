" Tim Stella's vimrc

" nocompatible because we're in the 21st century
set nocompatible


"required for Plug
call plug#begin()

"List of Bundles here:
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'flazz/vim-colorschemes'
Plug 'jceb/vim-orgmode'
Plug 'kamykn/spelunker.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'sickill/vim-pasta'
"" Color
Plug 'tomasr/molokai'

call plug#end()

" Clipboard
set clipboard=unnamed
set clipboard+=unnamedplus

" Set mouse mode
set mouse=a


filetype plugin indent on

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" Spell Checking
setlocal spell spelllang=en_us
let g:spelunker_check_type = 2
set nospell " turn off by default

" ctrlp
let g:ctrlp_working_path_mode = 'ra'

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
map <F2> :put =strftime('%FT%T%z')<CR>
