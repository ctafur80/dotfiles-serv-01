



-- C specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.opt.textwidth = 92
        vim.opt.tabstop = 2
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
    end,
})




