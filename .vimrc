" --- Basics ----------------------------------------------------
set nocompatible
set encoding=utf-8
set hidden
set confirm
set modelines=0

set title
set titlestring=%t
set clipboard=unnamedplus

" UI
set number
set ruler
set laststatus=2
set showcmd
set showmode

" --- Whitespace / formatting -----------------------------------
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" --- Search ----------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :let @/=''<cr>

" --- Cursor / motion -------------------------------------------
set scrolloff=3
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

nnoremap j gj
nnoremap k gk

noremap K 5k
vnoremap K 5k
noremap J 5j
vnoremap J 5j

" --- Insert mappings -------------------------------------------
inoremap jj <ESC>
inoremap JJ <ESC>
inoremap <C-h> <C-w>
nnoremap <Tab> <C-w>

" --- Splits ----------------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" --- Leader ----------------------------------------------------
let mapleader = " "

" Formatting
nnoremap <leader>q gqip

" Listchars toggle
set listchars=tab:▸\ ,eol:¬
nnoremap <leader>l :set list!<CR>

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>t<leader> :tabnext<CR>
nnoremap <leader>tm :tabmove<Space>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>

" --- Plugins (Vundle) ------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'raimondi/delimitmate'
Plugin 'sheerun/vim-polyglot'
Plugin 'sukima/xmledit'
Plugin 'leafOfTree/vim-matchtag'
Plugin 'sainnhe/gruvbox-material'

call vundle#end()
filetype plugin indent on
syntax on

" --- Colorscheme -----------------------------------------------
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
