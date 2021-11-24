"----------------------------------------------------------------------------
"
" General Settings
"
" ---------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set relativenumber
set number
set termguicolors
set title
set signcolumn=yes:2
set nowrap
set list
set listchars=tab:>-\ ,trail:∙
set mouse=a
set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus
set updatetime=300
set redrawtime=10000


"----------------------------------------------------------------------------
"
" Key maps
"
" ---------------------------------------------------------------------------

let mapleader = " "
nmap <leader>ve :edit ~/AppData/Local/nvim/init.vim<cr>

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

" Easy indentation
inoremap {<CR> {<CR>}<c-o>O


"----------------------------------------------------------------------------
"
" Plugins
"
" ---------------------------------------------------------------------------
call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'styled-components/vim-styled-components'
call plug#end()

" fuzzy finder config ------------------------------------------------------
let g:fzf_layout = { 'up': '~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

nmap <leader>f :Files<cr>
nmap <leader>F :AllFiles<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>H :History<cr>
" ------------------------------------------------------------------------

" float terminal ---------------------------------------------------------
nmap <leader>T :FloatermNew<cr>
nmap <leader>t :FloatermToggle<cr>
" ------------------------------------------------------------------------

" nerd tree ---------------------------------------------------------------
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
map <leader>r :NERDTreeFind<CR>
" ------------------------------------------------------------------------


" coc --------------------------------------------------------------------
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-snippets',
    \ 'coc-html',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-sql',
    \ 'coc-svg',
    \ 'coc-phpls',
    \ 'coc-pairs',
    \ 'coc-java',
    \]

"Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" ------------------------------------------------------------------------

colorscheme gruvbox


