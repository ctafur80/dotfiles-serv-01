



augroup c
  autocmd!
  autocmd BufRead,BufNewFile *.c set filetype=c syntax=c
augroup END

augroup header_file
  autocmd!
  autocmd BufRead,BufNewFile *.h set filetype=c syntax=c
augroup END



autocmd FileType c setlocal textwidth=92
autocmd FileType c setlocal ai shiftwidth=2

