"nerd tree
map <leader>r :NERDTreeFind<CR>

  " Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>lg <cmd>Telescope grep_string<cr>

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

 "coc
" key mappings example
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" there's way more, see `:help coc-key-mappings@en'

" augroup omnisharp_commands
"   autocmd!

" autocmd CursorHold *.cs OmniSharpTypeLookup
autocmd FileType cs nmap <silent> gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> gr <Plug>(omnisharp_find_usages)
autocmd FileType cs nmap <silent> gi <Plug>(omnisharp_find_implementations)
autocmd FileType cs nmap <silent> gt <Plug>(omnisharp_run_test)
autocmd FileType cs nmap <silent> gtf <Plug>(omnisharp_run_tests_in_file)
" Find all code errors/warnings for the current solution and populate the quickfix window
autocmd FileType cs nmap <silent> cc <Plug>(omnisharp_global_code_check)



