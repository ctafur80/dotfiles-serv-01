
vim.api.nvim_create_autocmd({"BufNewFile", "BufFilePre", "BufRead"}, {
    pattern = "*.ptex",
    callback = function()
        vim.opt.filetype = "plain"
        vim.opt.syntax = "plaintex"
        vim.opt.textwidth = 80
        vim.opt.wrap = true
        vim.opt.spell = false
    end,
})

