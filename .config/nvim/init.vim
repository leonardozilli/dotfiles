"--------------------------------
" Basic options
"--------------------------------
set nocompatible              " Don't try to be vi compatible
set encoding=utf-8
set fileencoding=utf-8
set title
set titlestring=%t
set confirm
set ignorecase
set smartcase
set showmode
set showcmd
set hlsearch
set incsearch
set clipboard=unnamedplus
set hidden                     " Allow hidden buffers
set number                     " Show line numbers
set ruler                      " Show file stats
set scrolloff=3                " Keep cursor away from screen edges
set ttyfast                    " Optimize rendering for fast terminals
set laststatus=2               " Always show status line
set modelines=0                " Security: disable modelines

"--------------------------------
" Tabs and indentation
"--------------------------------
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noshiftround
set backspace=indent,eol,start

"--------------------------------
" Text formatting
"--------------------------------
set wrap
set textwidth=79
set formatoptions=tcqrn1
set listchars=tab:▸\ ,eol:¬
" map <leader>l :set list!<CR> " Toggle tabs and EOL

"--------------------------------
" Cursor motion
"--------------------------------
nnoremap j gj
nnoremap k gk
noremap J 5j
vnoremap J 5j
noremap K 5k
vnoremap K 5k
set matchpairs+=<:> " Use % to jump between pairs
runtime! macros/matchit.vim

"--------------------------------
" Search
"--------------------------------
nnoremap / /\v
vnoremap / /\v
map <leader><space> :let @/=''<CR> " Clear search

"--------------------------------
" Leader key
"--------------------------------
let mapleader = ","

"--------------------------------
" Mappings
"--------------------------------
" Insert mode escape
inoremap jj <ESC>
inoremap <C-h> <C-w>

" Ctrl-C / Ctrl-V for clipboard
vnoremap <C-c> "+y
inoremap <C-v> <C-r>+
nnoremap <C-c> "+yy

" Window splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Tab> <C-w>

" Help key / fullscreen toggle
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Tabs management
map <leader>tn :tabnew<CR>
map <leader>t<leader> :tabnext<CR>
map <leader>tm :tabmove
map <leader>tc :tabclose<CR>
map <leader>to :tabonly<CR>

"--------------------------------
" Plugin manager: Vundle
"--------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'raimondi/delimitmate'
Plugin 'sainnhe/gruvbox-material'
Plugin 'sheerun/vim-polyglot'
Plugin 'romainl/Apprentice'
Plugin 'sukima/xmledit'
Plugin 'leafOfTree/vim-matchtag'

call vundle#end()
filetype plugin indent on
syntax on

"--------------------------------
" Color scheme
"--------------------------------
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
" colorscheme solarized
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" colorscheme apprentice
" colorscheme peachpuff
