





augroup make
  autocmd!
  autocmd BufRead,BufNewFile makefile set filetype=make syntax=make
  autocmd BufRead,BufNewFile Makefile set filetype=make syntax=make
augroup END


autocmd FileType make setlocal tabstop=4
autocmd FileType make setlocal ai shiftwidth=4
autocmd FileType make setlocal noexpandtab



