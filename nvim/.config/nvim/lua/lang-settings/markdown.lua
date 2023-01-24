
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt.wrap = true
        vim.opt.textwidth = 80
        -- autocmd FileType markdown setlocal foldcolumn=2
        -- autocmd FileType markdown setlocal complete+=kspell
        -- autocmd FileType markdown setlocal spell spelllang=es_es,espanol,en_us,ingles,compsci
        vim.opt.spell = false
    end,
})

