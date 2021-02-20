" ----------------------------------
" 各種基本設定
" ----------------------------------
set number

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set noerrorbells
set showmatch matchtime=1
set cinoptions+=:0

" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~

set history=10000

set shiftwidth=2
set softtabstop=2
set tabstop=2

set clipboard=unnamed,autoselect

" ----------------------------------
" Aliases, Keybindings
" ----------------------------------
cnoremap fz Files

" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" Plugin Section (powered by vim-plug)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()
