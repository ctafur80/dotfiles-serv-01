


" " Nota al pie -- TODO Hacer que sea solo en Pandoc
" function s:MdFootnote(note)
"   let s:footnote = "[^".a:note."]"
"   let @m = s:footnote
"   norm "mpmm
"   $put = s:footnote.':'
"   norm `m
" endfunction
" 
" command -nargs=1 Footnote call s:MdFootnote("<args>")


augroup pandoc
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.mkd set filetype=pandoc syntax=pandoc
  autocmd BufNewFile,BufFilePre,BufRead *.pandoc set filetype=pandoc syntax=pandoc
augroup END


autocmd FileType pandoc setlocal wrap
autocmd FileType pandoc setlocal textwidth=79
autocmd FileType pandoc setlocal foldcolumn=2
autocmd FileType pandoc setlocal complete+=kspell
autocmd FileType pandoc setlocal spell spelllang=es_es,espanol,en_us,ingles,compsci
autocmd FileType pandoc setlocal nospell
" autocmd FileType pandoc colorscheme pablo


autocmd Filetype pandoc setlocal conceallevel=0
let g:pandoc#syntax#conceal#use = 0

let g:pandoc#syntax#codeblocks#embeds#use = 1
let g:pandoc#syntax#codeblocks#embeds#langs = ['c', 'ruby', 'literatehaskell=lhaskell', 'bash=sh', 'javascript', 'tex', 'markdown', 'vimscript=vim', 'xml', 'html', 'css', 'python', 'sql', 'yaml', 'json', 'systemd', 'dockerfile', 'lua', 'liquid', 'asterisk']

let g:pandoc#syntax#style#emphases = 1
let g:pandoc#syntax#style#underline_special = 0

" let g:pandoc#syntax#colorcolumn = 79
let g:pandoc#syntax#roman_lists = 1


" " Estas son ya de la propia extensión; no de la de sintaxis
" let g:pandoc#filetypes#handled = ['pandoc']
" let g:pandoc#filetypes#pandoc_markdown = 1
" let g:pandoc#formatting#mode = 'h' " ¿Qué hace `a`?




