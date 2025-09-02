  " nerd tree ---------------------------------------------------------------
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeQuitOnOpen=1

 " fuzzy finder config ------------------------------------------------------
let g:fzf_layout = { 'up': '~80%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

" dotnet omnisharp
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_highlighting = 1
let g:OmniSharp_auto_complete = 1

" let g:OmniSharp_popup_position = 'peek'
" let g:OmniSharp_diagnostic_listen = 2  " Only show diagnostics on save
let $DOTNET_ROOT = "/usr/local/share/dotnet"
let g:OmniSharp_selector_ui = 'fzf'

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}


 "use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
 
 "comments
autocmd FileType typescript.tsx setlocal commentstring={/*\ %s\ */}
autocmd FileType sh,python,text set commentstring=#%s
autocmd FileType xml,html set commentstring=<!--%s--> # here %s is the content wrapped by comment strings

 "prettier run on save
" let g:neoformat_try_node_exe = 1
" autocmd BufWritePre *.js Neoformat
" autocmd FileType ts,tsx set commentstring={/*%s*/} # here %s is the content wrapped by comment strings

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

--flutter
require("flutter-tools").setup {
    ui = {
      border = "rounded",
    },
    dev_log = {
      enabled = true,
      notify_errors = false,
      --open_cmd = 'botright 15split', -- 15-line horizontal split at bottom
      open_cmd = "vertical rightbelow 50split", -- 15-line horizontal split at bottom
    },
    widget_guides = {
      enabled = true
    },
    settings = {
      enableSnippets = true,
    },
} 

--flutter keymaps
vim.keymap.set('n', '<leader>fr', function() 
  require('flutter-tools.commands').run({
    '--flavor', 'dev', 
    '--dart-define=ENV=dev',
    '--target', 'lib/main.dart'
  }) end, { desc = 'Flutter Run' })
vim.keymap.set('n', '<leader>fd', function() require('flutter-tools.commands').run_debug() end, { desc = 'Flutter Debug' })
vim.keymap.set('n', '<leader>fk', function() require('flutter-tools.commands').quit() end, { desc = 'Flutter Quit' })
vim.keymap.set('n', '<leader>hr', function() require('flutter-tools.commands').reload() end, { desc = 'Flutter Hot Reload' })
vim.keymap.set('n', '<leader>rr', function() require('flutter-tools.commands').restart() end, { desc = 'Flutter Hot Restart' })

--debug keymaps
vim.keymap.set('n', '<leader>bb', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<leader>+', function() require('dap').step_over() end, { desc = 'Step Over' })
vim.keymap.set('n', '<leader>-', function() require('dap').step_into() end, { desc = 'Step Into' })
vim.keymap.set('n', '<leader>>', function() require('dap').continue() end, { desc = 'Continue' })
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end, { desc = 'Open DAP REPL' })

--dap signs and highlights (set after colorscheme loads)
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#e51400', bold = true })
    vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#00ff00', bold = true })
    vim.api.nvim_set_hl(0, 'DapStoppedLine', { bg = '#2e4d3d' })
    vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg = '#f1c40f' })
  end,
})

-- Also set them immediately
vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#e51400', bold = true })
vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#00ff00', bold = true })
vim.api.nvim_set_hl(0, 'DapStoppedLine', { bg = '#2e4d3d' })
vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg = '#f1c40f' })

--fancy dap signs
vim.fn.sign_define('DapBreakpoint', {
  text = '●',
  texthl = 'DapBreakpoint',
  linehl = 'DapBreakpointLine',
  numhl = 'DapBreakpoint'
})

 --colorizer
require'colorizer'.setup()

--autopairs
require("nvim-autopairs").setup {}

EOF


" source /Users/sean/.config/nvim/plugins/discord_config.vim
source /Users/seanmcgeachie/.config/nvim/plugins/lualine_config.vim
