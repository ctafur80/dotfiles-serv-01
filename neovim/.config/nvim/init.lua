

-- Neovim settings

-- It is done in Lua language. You can learn to make your Neovim settings in Lua in
-- <https://www.notonlycode.org/neovim-lua-config/>.





require("plugins")

require("basic-settings")

require("prettier-neovim")

require("setup/treesitter")

require("completion")

require("setup/lspconfig")


-- Language-specific settings
require("lang-settings/c")
require("lang-settings/pandoc")
require("lang-settings/css")
require("lang-settings/html")
require("lang-settings/javascript")
require("lang-settings/lua")
require("lang-settings/make")
require("lang-settings/markdown")
require("lang-settings/python")
require("lang-settings/latex")
require("lang-settings/plaintex")








