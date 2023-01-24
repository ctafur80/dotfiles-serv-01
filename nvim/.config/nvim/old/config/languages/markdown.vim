
augroup markdown
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown syntax=markdown
  autocmd BufNewFile,BufFilePre,BufRead *.markdown set filetype=markdown syntax=markdown
augroup END


autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal textwidth=79
autocmd FileType markdown setlocal foldcolumn=2
autocmd FileType markdown setlocal complete+=kspell
autocmd FileType markdown setlocal spell spelllang=es_es,espanol,en_us,ingles,compsci
autocmd FileType markdown setlocal nospell
" autocmd FileType markdown colorscheme default


autocmd Filetype markdown setlocal conceallevel=0
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'tex', 'javascript', 'c']



