
-- HTML specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "html",
    callback = function()
        vim.opt.textwidth = 0
        vim.opt.wrap = false
        vim.opt.shiftwidth = 2
        vim.opt.spell = false
    end,
})

