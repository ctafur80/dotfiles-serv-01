
vim.api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function()
        vim.opt.wrap = false
        vim.opt.expandtab = false
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
    end,
})

