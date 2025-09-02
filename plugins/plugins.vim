call plug#begin('~/local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
 "git 
Plug 'kdheepak/lazygit.nvim'
Plug 'f-person/git-blame.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
 "lsp & autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"autopairs
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
 "status line
Plug 'nvim-lualine/lualine.nvim'
 "fuzzyfinding
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 "make it look pretty
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tribela/vim-transparent'
Plug 'prettier/vim-prettier'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sbdchd/neoformat'
  "theme
Plug 'markvincze/panda-vim'
Plug 'gkapfham/vim-vitamin-onec'
Plug 'gruvbox-community/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'Mofiqul/dracula.nvim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/vim-jsx-improve'
"dart + flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'
"dotnet
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
"debug
Plug 'mfussenegger/nvim-dap'
call plug#end()


source /Users/seanmcgeachie/.config/nvim/plugins/config.vim
" source /Users/seanmcgeachie/.config/nvim/plugins/remaps.vim



