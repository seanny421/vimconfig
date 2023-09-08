"----------------------------------------------------------------------------
"
" General Settings
"
" ---------------------------------------------------------------------------

set expandtab
set shiftwidth=2
set tabstop=2 
set hidden 
set relativenumber
set number
set termguicolors
set title
set signcolumn=yes:2
set nowrap
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus
set updatetime=100
set redrawtime=10000
set nohlsearch
set exrc
set nobackup
set smartindent
set noswapfile
set encoding=UTF-8


"----------------------------------------------------------------------------
"
" Key maps
"
" ---------------------------------------------------------------------------

let mapleader = " "
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

 " Make y behave like other capitals
nnoremap Y y$

 " Keep text highlighted after indentation
vnoremap < <gv
vnoremap > >gv

 " Keep it centered when searching through text
nnoremap n nzzzv
nnoremap N nzzzv

 " Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>
imap  $$ <ESC>$a

 " Easy indentation
inoremap {<CR> {<CR>}<c-o>O
" Easy completion
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

source /Users/sean/.config/nvim/plugins/plugins.vim
source /Users/sean/.config/nvim/remaps/remaps.vim


" colorscheme gruvbox
" colorscheme challenger_deep
" colorscheme dracula
colorscheme tokyonight-storm
" colorscheme panda
