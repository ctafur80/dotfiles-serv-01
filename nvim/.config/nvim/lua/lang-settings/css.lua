
-- CSS specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "css",
    command = "setlocal iskeyword+=-",
    --[[ callback = function()
        vim.opt.iskeyword = vim.opt.iskeyword .. ",-"
    end, ]]
})

