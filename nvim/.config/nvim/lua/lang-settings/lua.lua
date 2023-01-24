
-- Lua specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.opt.textwidth = 92
        vim.opt.tabstop = 4
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
    end,
})

