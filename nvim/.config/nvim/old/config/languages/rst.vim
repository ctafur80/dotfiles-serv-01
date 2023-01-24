
augroup rst
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.rst set filetype=rst syntax=rst
augroup END

autocmd FileType rst setlocal wrap
autocmd FileType rst setlocal textwidth=79
autocmd FileType rst setlocal tabstop=3
autocmd FileType rst setlocal softtabstop=3
autocmd FileType rst setlocal ai shiftwidth=3
autocmd FileType rst setlocal foldcolumn=2
autocmd FileType rst setlocal complete+=kspell
autocmd FileType rst setlocal spell spelllang=es_es,espanol,en_us,ingles,compsci
autocmd FileType rst setlocal nospell


