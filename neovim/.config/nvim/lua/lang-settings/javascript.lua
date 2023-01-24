
-- JavaScript specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    callback = function()
        vim.opt.formatoptions = "jql"
        vim.opt.textwidth = 92
        vim.opt.wrap = false
        vim.opt.shiftwidth = 2
    end,
})

