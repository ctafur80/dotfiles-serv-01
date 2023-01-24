
vim.api.nvim_create_autocmd({"BufNewFile", "BufFilePre", "BufRead"}, {
    pattern = "*.tex",
    callback = function()
        vim.opt.filetype = "latex"
        vim.opt.syntax = "latex"
        vim.opt.textwidth = 80
        vim.opt.wrap = true
        -- vim.opt.foldcolumn = 2
        -- vim.opt.complete = vim.opt.complete .. ",kspell"
        vim.opt.spelllang = "es_es,espanol,en_us,ingles,compsci"
        vim.opt.spell = false
    end,
})

