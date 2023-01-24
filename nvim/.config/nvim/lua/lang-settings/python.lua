
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt.textwidth = 92
        vim.opt.tabstop = 4
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        -- require'lspconfig'.pyright.setup{}
    end,
})

