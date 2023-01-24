
-- Downloads Lazy (a Neovim package manager) just from Neovim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




-- Loading packages
require("lazy").setup({

    "folke/which-key.nvim",
    {"folke/neoconf.nvim", cmd = "Neoconf"},
    "folke/neodev.nvim",

    "tpope/vim-surround",


    "echasnovski/mini.nvim",


    -- "huyvohcmc/atlas.vim",
    -- {'rose-pine/neovim', as = 'rose-pine'},


    "lewis6991/gitsigns.nvim",


    -- "lukas-reineke/indent-blankline.nvim",


    "andrewferrier/wrapping.nvim",
    "vim-pandoc/vim-pandoc-syntax",

    {
        "numToStr/Comment.nvim",
        config = function() require("Comment").setup() end
    },



    {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
    "nvim-treesitter/playground",

    -- LSP
    "VonHeikemen/lsp-zero.nvim",
    requires = {
        "neovim/nvim-lspconfig",

        -- Autocompletion
        {"hrsh7th/nvim-cmp"},
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-path"},
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-nvim-lua"},
        {"saadparwaiz1/cmp_luasnip"},

        -- Snippets
        {"L3M0N4D3/LuaSnip"},
        -- Snippet collection (optional)
        {"rafamadriz/friendly-snippets"},
    },

    "onsails/lspkind-nvim",


    -- Telescope -- For moving quickly in a project
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
})

