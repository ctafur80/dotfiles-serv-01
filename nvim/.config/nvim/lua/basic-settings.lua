

vim.opt.termguicolors = false
pcall(vim.cmd, "colorscheme minicyan")
-- pcall(vim.cmd, "colorscheme rose-pine")

vim.opt.number = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- vim.opt.smartindent = false

vim.opt.scrolloff = 4

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.opt.hidden = true


vim.opt.conceallevel = 0


-- Netrw. Vim's default integrated file explorer. Maybe Telescope will make it
-- obsolete.
vim.g.netrw_banner = 1
vim.g.netrw_liststyle = 3



-- TODO Quizás haya una forma de hacerlo podiendo el valor original en la
-- primera cadena
vim.opt.path = ".,/user/include,," .. "**"
-- vim.opt.path = vim.opt.path .. "**"


-- Highlights sotf wrap so that I can unset numbering lines. Indents by 2
-- additional characters on wrapped lines; when line >= 40 characters puts
-- "showbreak" to the left in the same line
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:2,min:40,sbr"
vim.opt.showbreak = "⤷"



vim.opt.cursorline = true
vim.opt.joinspaces = false


vim.bo.formatoptions = vim.bo.formatoptions:gsub("c", "")
vim.bo.formatoptions = vim.bo.formatoptions:gsub("r", "")
vim.bo.formatoptions = vim.bo.formatoptions:gsub("o", "")


-- Backup and undo
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/cache/neovim"
-- vim.opt.undodir = vim.g.stdpath.config .. "/.config/cache/neovim"
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000



-- Searching (more info in https://stackoverflow.com/a/2288438/7026520)
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true



-- When opening remembers the cursor last position
vim.api.nvim_create_autocmd('BufReadPost', {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})




