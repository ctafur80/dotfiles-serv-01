


autocmd BufNewFile,BufRead *.dj set filetype=djot
autocmd BufNewFile,BufRead *.djot set filetype=djot


autocmd FileType djot setlocal wrap
autocmd FileType djot setlocal textwidth=79
autocmd FileType djot setlocal ai shiftwidth=2
autocmd FileType djot setlocal complete+=kspell
autocmd FileType djot setlocal spell spelllang=es_es,espanol,en_us,ingles,compsci
autocmd FileType djot setlocal nospell


