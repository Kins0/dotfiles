set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
" Plugin 'powerline/powerline'
" Plugin 'valloric/youcompleteme'
" Plugin 'francoiscabrol/ranger.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'neoclide/coc.nvim'
Plugin 'habamax/vim-godot'
Plugin 'chrisbra/colorizer'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax on

set bg=light
set nocompatible
set mouse=a
set ttymouse=sgr
set nohlsearch
set number relativenumber 
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Tab Settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

nnoremap <leader>q :q<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>f :FZF<CR>
nnoremap <leader>t :NERDTree <bar> :vertical resize 50<CR>

nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


" Auto load Colorizer
:let g:colorizer_auto_filetype='css,html'
