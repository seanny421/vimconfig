call plug#begin('~/local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
 "lsp & autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
 "status line
Plug 'nvim-lualine/lualine.nvim'
 "fuzzyfinding



Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }


" Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-ts-autotag'
 "discord support
" Plug 'andweeb/presence.nvim'
 "make it look pretty
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'xiyaowong/nvim-transparent'
Plug 'prettier/vim-prettier'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sbdchd/neoformat'
Plug 'markvincze/panda-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'Mofiqul/dracula.nvim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/vim-jsx-improve'
"autopairs
Plug 'windwp/nvim-autopairs'
call plug#end()


source /Users/sean/.config/nvim/plugins/config.vim
" source /Users/sean/.config/nvim/plugins/remaps.vim



