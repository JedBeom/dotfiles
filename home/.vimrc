set number
set ai
set shiftwidth=4
set tabstop=4
set ruler
syntax on
set title
set fileencodings=utf-8
set autoindent
set laststatus=2
set autoread
set ttimeoutlen=50

set ignorecase
set incsearch
set smartcase

" set mouse=a

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

Plugin 'fatih/vim-go'
Plugin 'mdempsky/gocode', {'rtp': 'nvim/'}
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go', {'do': 'make'}

Plugin 'dracula/vim'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'
Plugin 'moorereason/vim-markdownfmt'
Plugin 'ap/vim-css-color'

Plugin 'vim-scripts/fcitx.vim'
call vundle#end()            " required
filetype plugin indent on    " required
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

" let g:dracula_colorterm = 0
color dracula

" NERDTREE
let NERDTreeShowHidden=1
nmap <silent> <C-D> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
au VimEnter *  NERDTree

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" YCM
let g:ycm_server_python_interpreter = '/usr/bin/python3'
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:deoplete#enable_at_startup = 1

" markdown
let g:vim_markdown_folding_disabled = 1

command W w
command Q q
command WQ wq

" Golang
set updatetime=100
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
setlocal omnifunc=go#complete#Complete
