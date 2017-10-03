let mapleader = "\<Space>"

imap kj <Esc>
noremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>e :edit 
nnoremap <Leader>n :noh<CR>
nnoremap <Leader>s :split 
nnoremap <Leader>v :vsplit 
nnoremap <Leader>% v%
nnoremap W b
nnoremap E We
nnoremap <Leader>t :tabedit 
nnoremap <Leader><Tab> :tabnext<CR>
nnoremap <Leader><S-Tab> :tabprevious<CR>
vnoremap <Leader>y "*y
nnoremap <Leader>Y "*Y
nnoremap <Leader>yy "*yy
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P
nnoremap <Leader>fp vapgq
nnoremap <Leader>o o<ESC>k
nnoremap <Leader>O O<ESC>j
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>m <C-w>_<C-w>\|

nnoremap <C-p> :!python %<CR>
nnoremap <Leader>lv :Latexmk<CR>:Latexmk<CR>:LatexView<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/cscope.vim'
Plugin 'https://github.com/vim-scripts/AutoClose'
" Plugin 'https://github.com/klen/python-mode'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype off
filetype on
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

syntax on
set mouse=a
set number
set numberwidth=3
highlight LineNr ctermfg=darkgrey ctermbg=lightgrey
set cursorline

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set noignorecase

set incsearch
set nohlsearch 

""set clipboard+=unnamedplus

set statusline+=%F
set laststatus=2

function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

ino {<CR> {<CR>}<C-o>O

" " Syntastic
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_c_include_dirs = ['/home/pgodart/projects/externals','/home/pgodart/projects/', '~/projects/mostt/mostt_sc/common/']
let g:syntastic_mode_map = {'passive_filetypes': ['tex']}

" " NERDTree
map <C-m> :NERDTreeToggle<CR>

filetype plugin on

autocmd FileType tex set textwidth=80
let g:LatexBox_build_dir="build"
let g:LatexBox_latexmk_options="-output-directory=build"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown 
autocmd BufNewFile,BufReadPost *.hsm set filetype=hsm
autocmd FileType md set textwidth=80
autocmd FileType hsm set syntax=c
