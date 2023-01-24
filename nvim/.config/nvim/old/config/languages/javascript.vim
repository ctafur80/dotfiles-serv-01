

" augroup jsfiles
"   autocmd!
"   autocmd BufRead,BufNewFile *.js set filetype=javascript syntax=javascript
" augroup END

autocmd FileType javascript setlocal formatoptions-=cro
autocmd FileType javascript setlocal textwidth=90
autocmd FileType javascript setlocal ai shiftwidth=2


