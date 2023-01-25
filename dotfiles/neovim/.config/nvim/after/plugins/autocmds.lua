



local c_group = vim.api.nvim_create_autogroup("c", {clear = true})
vim.api.nvim_create_autocmd("c_set_width", {
    command = "setlocal textwidth=92",
    group = "c_group",
})





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

