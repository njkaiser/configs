syntax on
imap kj <Esc>
set number
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" support for roslaunch XML syntax:
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
