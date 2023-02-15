set title
set titlestring=%t
set confirm
set ignorecase
set showmode
set hlsearch
set incsearch

inoremap jj <ESC>
nnoremap <Tab> <C-w>
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" TODO: Load plugins here (pathogen or vundle)
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



call vundle#end()            " required
filetype plugin indent on    " required

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
set backspace=indent,eol,start


" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Move down file lines
noremap J 5j
vnoremap J 5j
" Move up file lines
noremap K 5k
vnoremap K 5k

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL
"
" splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs
map <leader>tn :tabnew 
map <leader>t<leader> :tabnext<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>


" Color scheme (terminal)
if has('termguicolors')
  set termguicolors
endif
"set t_Co=256
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_better_performance = 1
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized
" colorscheme peachpuff
colorscheme gruvbox-material
" colorscheme apprentice
