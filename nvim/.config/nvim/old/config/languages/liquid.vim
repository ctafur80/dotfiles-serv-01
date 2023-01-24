
augroup Liquid
  autocmd!
  autocmd BufRead,BufNewFile *.liquid set filetype=liquid
  autocmd FileType liquid setlocal syntax=liquid
  autocmd FileType liquid setlocal nowrap
  autocmd FileType liquid setlocal textwidth=0
  autocmd FileType liquid setlocal nospell
augroup END



