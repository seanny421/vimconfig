  " nerd tree ---------------------------------------------------------------
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeQuitOnOpen=1

 " fuzzy finder config ------------------------------------------------------
let g:fzf_layout = { 'up': '~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

 "use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
 
 "comments
autocmd FileType typescript.tsx setlocal commentstring={/*\ %s\ */}
autocmd FileType sh,python,text set commentstring=#%s
autocmd FileType xml,html set commentstring=<!--%s--> # here %s is the content wrapped by comment strings

 "prettier run on save
let g:neoformat_try_node_exe = 1
" autocmd BufWritePre *.js Neoformat
" autocmd FileType ts,tsx set commentstring={/*%s*/} # here %s is the content wrapped by comment strings

 "coc
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

lua <<EOF
 --treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
}

 --colorizer
require'colorizer'.setup()
 --transparent
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})

--autopairs
require("nvim-autopairs").setup {}


EOF


" source /Users/sean/.config/nvim/plugins/discord_config.vim
source /Users/sean/.config/nvim/plugins/lualine_config.vim
