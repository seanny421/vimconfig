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
" set termguicolors
set title
set signcolumn=yes:2
set nowrap
set list
" set listchars=tab:>-\ ,trail:∙
set listchars=tab:▸\ ,trail:·
set mouse=nvi
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

" Easy indentation
inoremap {<CR> {<CR>}<c-o>O


"----------------------------------------------------------------------------
"
" Plugins
"
" ---------------------------------------------------------------------------
call plug#begin('~\.config\nvim\plugged')
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"typescript-------------
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
" Plug 'HerringtonDarkholme/yats.vim'
"typescript--------------
" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
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
let NERDTreeShowHidden=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" ------------------------------------------------------------------------

"gitgutter ---------------------------------------------------------------
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
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


"for tpope commentary 
autocmd VimEnter * CocStart
autocmd FileType javascript set commentstring=/*\ %s\ */
autocmd FileType javascript.jsx set commentstring={/*\ %s\ */}
autocmd FileType html omnifunc=htmlcomplete#CompleteTags
" ------------------------------------------------------------------------

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE



