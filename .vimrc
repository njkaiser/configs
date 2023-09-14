" important stuff:
imap kj <Esc>
imap KJ <Esc>
imap Kj <Esc>
imap kJ <Esc>
vmap kj <Esc>
let mapleader = "\<Space>" 

" syntax highlighting for protobufs (must copy contents of this file to ~/.vim/syntax/proto.vim:
" https://github.com/protocolbuffers/protobuf/blob/master/editors/proto.vim)
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" line movers:
" noremap - ddp
" noremap _ ddkP

" Easier copy/paste between files
vnoremap <C-c> :'<,'>w! /tmp/vimcopybuffer<CR>
nnoremap <C-p> :r /tmp/vimcopybuffer<CR>

" spaces are better than colons! Unless it's your real colon, then I suppose
" you need it to poop.
noremap <Leader><Leader>w :w<CR>
nnoremap <Leader><Leader>q :q<CR>
nnoremap <Leader><Leader>wq :wq<CR>
nnoremap <Leader><Leader>qq :q!<CR>

" arguably useful, if you're me:
noremap <C-n> :set number!<CR>
" noremap <ALT+p> :set invpaste paste?<CR>
set showmode

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

syntax on
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set smartcase

" Save undo file history (saves you if you accidentally delete a file)
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
set undolevels=1000
set undoreload=10000


set wildmode=longest,list " bash-like autocompletion

" Add background highlighting to characters at the 80th column,
" which is much less annoying/intrusive than :set colorcolumn=80.
highlight ColorColumn ctermbg=DarkCyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%101v', 100)
"To activate highlight:
"nnoremap <C-c> :match Search '\%>80v.\+'<CR>
"To deactivate it:
"nnoremap <leader>2 :match none<CR>

" support for roslaunch XML syntax:
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

filetype plugin indent on
" THIS IS ALL FOR VUNDLE *****************************************
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" *** all plugins must be added after the following line

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'easymotion/vim-easymotion'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " snippets are not included with ultisnips by default
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
" Plugin 'taketwo/vim-ros'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Chiel92/vim-autoformat'
let g:autoformat_verbosemode = 0
"let g:autoformat_verbosemode = 1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatter_yapf_style = 'pep8'
let g:formatdef_clangformat = "'clang-format-3.6 -lines='.a:firstline.':'.a:lastline.' --assume-filename=\"'.expand('%:p').'\" -style=file'"
let g:formatdef_remark_markdown = '"remark --quiet --no-color --setting footnotes:true"'
let g:formatdef_buildifier = '"buildifier --mode=fix"'
let g:formatters_python = ['yapf']
let g:formatters_bzl = ['yapf']
let g:formatters_build = ['buildifier']

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

" fzf stuff:
set rtp+=~/.fzf
map ,f :FZF<CR>

" easymotion config:
"let g:EasyMotion_do_mapping = 1 " Enable default mappings
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
" I did all this to avoid using the default <Leader><Leader>, but there's a
" way to remap easymotion's leader - figure it out later
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>e <Plug>(easymotion-e)
map <Leader>s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>f <Plug>(easymotion-f)
map <Leader>F <Plug>(easymotion-F)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)
" map <Leader>n <Plug>(easymotion-n)
" map <Leader>N <Plug>(easymotion-N)

" Ultisnips config:
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsEditSplit="horizontal"

" this prevents YCM from asking if the file is okay to load every time:
"let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1

" The g:ycm_key_list_select_completion option
" This option controls the key mappings used to select the first completion string. Invoking any of them repeatedly cycles forward through the completion list.
" Some users like adding <Enter> to this list.
" Default: ['<TAB>', '<Down>']
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" The g:ycm_key_list_previous_completion option
" This option controls the key mappings used to select the previous completion string. Invoking any of them repeatedly cycles backwards through the completion list.
" Note that one of the defaults is <S-TAB> which means Shift-TAB. That mapping will probably only work in GUI Vim (Gvim or MacVim) and not in plain console Vim because the terminal usually does not forward modifier key combinations to Vim.
" Default: ['<S-TAB>', '<Up>']
" let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

" The g:ycm_key_list_stop_completion option
" This option controls the key mappings used to close the completion menu. This is useful when the menu is blocking the view, when you need to insert the <TAB> character, or when you want to expand a snippet from UltiSnips and navigate through it.
" Default: ['<C-y>']
" let g:ycm_key_list_stop_completion = ['<C-y>']

" IncSearch config:
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
" map /  <Plug>(incsearch-stay)
map <Leader>/ <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-backward)
map <Leader>? <Plug>(incsearch-easymotion-?)
" map g/ <Plug>(incsearch-stay)
" map g/ <Plug>(incsearch-easymotion-stay)
map n  <Plug>(incsearch-nohl-n)
map <Leader>n <Plug>(incsearch-easymotion-n)
map N  <Plug>(incsearch-nohl-N)
map <Leader>N <Plug>(incsearch-easymotion-N)
map *  <Plug>(incsearch-nohl-*)
map <Leader>* <Plug>(incsearch-easymotion-*)
map #  <Plug>(incsearch-nohl-#)
map <Leader># <Plug>(incsearch-easymotion-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" set airline theme:
let g:airline_powerline_fonts=1
let g:airline_theme='deus'
" set encoding=utf-8
" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10
" set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Cardi B's source/header switching function, mapped to ",s"
function! SwitchSourceHeader()
  " Get the current file extension. To see what this command is doing,
  " see :help expand.
  let l:cur_ext=expand("%:e")
  " See if we have a source file (ending in .cpp or .cc).
  if (expand ("%:e") == "cpp" || expand ("%:e") == "cc")
    " %:t gives the basename with extension, :r trims the extension.
    " Try searching for both .h and .hpp extensions, and open the first file
    " that is found.
    let l:h_path=expand("%:r") . ".h"
    let l:hpp_path=expand("%:r") . ".hpp"
    if filereadable(h_path)
      find %:t:r.h
    elseif filereadable(hpp_path)
      find %:t:r.hpp
    endif
  else
    let l:cpp_path=expand("%:r") . ".cpp"
    let l:cc_path=expand("%:r") . ".cc"
    if filereadable(cpp_path)
      find %:t:r.cpp
    elseif filereadable(cc_path)
      find %:t:r.cc
    endif
  endif
endfunction
" FUNCTION CALL FOR ABOVE
nnoremap ,s :call SwitchSourceHeader()<CR>

function! GoToBuild()
python3 << EOF
import vim
import os.path

try:
  fn = vim.current.buffer.name
  tokens = fn.split('/')
  basename = tokens[-1]
  buildfile = None
  for i in range(len(tokens)-1, 0, -1):
    buildfile = '/'.join(tokens[:i]) + '/BUILD'
    if os.path.isfile(buildfile):
      break
  if buildfile:
    print("found!!!",buildfile)
    vim.command('edit ' + buildfile)
    vim.command('call search("\\"' + basename + '\\"")')
except Exception as e:
   print("Something went wrong: " + str(e))
EOF
endfunction
" FUNCTION CALL FOR ABOVE
nnoremap ,b :call GoToBuild()<CR>

" Cardi B's script for updating BUILD files, mapped to ",u"
function! UpdateDeps()
  let l:fname=expand('%:p')
  py3f /mnt/flashblade/carden/utils/update_deps_vim.py
  call input('Press any key to continue')
  redraw!
  execute 'edit' l:fname
endfunction
" FUNCTION CALL FOR ABOVE
nnoremap ,u :call UpdateDeps()<cr>


" TODO fix this so it actually works when I type :bb
"" Lakshay's bazel build current taret from within vim, mapped to ":bb"
"function! BazelCmd() "action, target)
"  let file_name = expand('%:t:r')
"  echo "hello" . file_name
"  "let tmp_file = "/tmp/bazel_vim_stderr.txt"
"  "let error_regex = "^[^: ]*:[0-9]\\{1,\\}:[0-9]\\{1,\\}: error"
"  "let cmd = "bazel " . a:action . " " . a:target . " 2>&1 | tee >(grep '" . error_regex . "' >" . tmp_file . ")"
"  "exec "!" . cmd
"  "cexpr! system("cat " . tmp_file)
"  "if (len(getqflist()) > 0)
"  "  copen
"  "endif
"endfunction
"cnoreabbrev bb :call BazelCmd()<cr>

"------------------------------------------------------------}
" YouCompleteMe Config
"
" Set this so that ycm can find python for my virtualenv
"let g:ycm_python_binary_path = 'python'
"" Set this for compilation flags
"" let g:ycm_global_ycm_extra_conf='~/.vim/ycm_config/cpp/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"" Set this to make ycm a syntastic checker
"let g:ycm_register_as_syntastic_checker=0
"" Set this to use CTags
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_goto_buffer_command = 'horizontal-split'
"TODO these key mapping were making arrow keys do stupid things, fix them:
" nnoremap <C-q> :YcmCompleter GoToDeclaration<CR>
" nnoremap <C-w> :YcmCompleter GoToDefinition<CR>
"nnoremap <C-t> :YcmCompleter GetType<CR>
" Jump to the definition of a macro or function:
"nnoremap <C-f> :YcmCompleter GoTo<CR>

" fugitive setup:
cnoreabbrev gd Gdiff
cnoreabbrev gs Gstatus
cnoreabbrev gb Gblame

" vim-autoformat stuff
nnoremap ,x :Autoformat<CR>

" airline color scheme does not play nice with Byobu out of the box:
set term=screen-256color
