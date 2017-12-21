syntax on
imap kj <Esc>
set number
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set smartcase " searches are case insensitive unless something in search term is capitalized

" support for roslaunch XML syntax:
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

" THIS IS ALL FOR VUNDLE *****************************************
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" *** all plugins must be added after the following line

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " snippets are not included with ultisnips by default

" *** all plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required

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
"
" THIS IS ALL FOR VUNDLE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" easymotion config:
let g:EasyMotion_do_mapping = 1 " Enable default mappings

" Ultisnips config:
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsEditSplit="horizontal"

