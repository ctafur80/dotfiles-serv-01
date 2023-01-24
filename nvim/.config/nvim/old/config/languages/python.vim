


augroup python
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.py set filetype=python syntax=python
augroup END


autocmd FileType python setlocal textwidth=92

lua require'lspconfig'.pyright.setup{}



" let g:pymode = 1
" let g:pymode_options=1
" let g:pymode_trim_whitespaces = 0
" let g:pymode_options_colorcolumn = 0
" " let g:pymode_python = python3




