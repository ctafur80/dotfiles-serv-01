
augroup luafiles
  autocmd!
  autocmd BufRead,BufNewFile *.lua set filetype=lua syntax=lua
augroup END

autocmd FileType lua setlocal syntax=lua
autocmd FileType lua setlocal formatoptions-=cro
autocmd FileType lua setlocal textwidth=90



