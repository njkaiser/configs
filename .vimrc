" my stuff:
imap kj <Esc>
vmap kj <Esc>
noremap - ddp
noremap _ ddkP
let mapleader = "\<Space>" 

" probably not necessary, but whatever
nnoremap :ev :vsplit $MYVIMRC<cr>
nnoremap :sv :so $MYVIMRC<cr>

" spaces are better than colons!
noremap <Leader><Leader>w :w<CR>
nnoremap <Leader><Leader>q :q<CR>
nnoremap <Leader><Leader>wq :wq<CR>
nnoremap <Leader><Leader>qq :q!<CR>

" hack for now:
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" start a cpp file:
iabbrev cppskel "#include <iostream>\n\nint main(int argv, char **argc) {\n\nreturn 0;\n}\n"

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

syntax on
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
"let g:EasyMotion_do_mapping = 1 " Enable default mappings
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
" I did all this to avoid using the default <Leader><Leader>, but there's a
" way to remap easymotion's leader - figure it out later
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>e <Plug>(easymotion-e)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>f <Plug>(easymotion-f)
map <Leader>F <Plug>(easymotion-F)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)
map <Leader>n <Plug>(easymotion-n)
map <Leader>N <Plug>(easymotion-N)


" Ultisnips config:
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsEditSplit="horizontal"

" this prevents YCM from asking if the file is okay to load every time:
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
