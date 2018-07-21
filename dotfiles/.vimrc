syntax on
set clipboard=unamed
filetype plugin indent on
syn on se title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nu
set autoindent smartindent
set ruler
set smarttab
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch
set mat=2
set autoread
nmap <leader>w :w!<cr>
set colorcolumn=85
:au FocusLost * :wa
:au FocusLost * silent! wa
:set autowrite
:set dictionary=/usr/share/dict/words
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'docunext/closetag.vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'leshill/vim-json'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'ap/vim-css-color'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'xolox/vim-notes'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'lervag/vimtex'

filetype plugin indent on
