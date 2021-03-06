" vimのデフォルトのプラグインを使用するための設定
set nocompatible
filetype plugin on

" matchit.vimを有効にする設定
" :h matchit-install
runtime macros/matchit.vim

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

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set clipboard=unnamed,autoselect

set directory=~/tmp/swp
set backup
set backupdir=~/tmp/backup
set undodir=~/tmp/undo

" Beep 音消す
set vb t_vb=

" ----------------------------------
" exuberant-ctags の設定
" ----------------------------------
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
" ----------------------------------

" ----------------------------------
" Aliases, Keybindings
" ----------------------------------
cnoremap fz Files
cnoremap agk Ack
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" %:h<Tab>を%%だけで済ませるマッピング
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" バッファリストを移動するためのキーマッピング
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" :nohlsearch を、<C-l>だけで済ませるマッピング
" <C-l>は画面をクリアしてから再描画するコマンド。これの挙動に追加している
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

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

Plug 'ludovicchabant/vim-gutentags'

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'JuliaEditorSupport/julia-vim'

Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1 " Automatically format on saving.
let g:mix_format_options = '--check-equivalent'

Plug 'leafOfTree/vim-vue-plugin'

" Initialize plugin system
call plug#end()
