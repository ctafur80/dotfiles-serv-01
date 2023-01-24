

augroup bibtex
  autocmd!
  autocmd BufRead,BufNewFile *.bib set filetype=bib syntax=bib
augroup END

autocmd FileType bib setlocal textwidth=0




" " VimTeX -- Es mejor que VimLaTeX
" let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_enabled = 1
" let g:tex_flavor = 'latex'
" let g:vimtex_complete_enabled = 1
" let g:vimtex_fold_enabled = 1



