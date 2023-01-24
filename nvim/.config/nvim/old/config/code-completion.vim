
lua << EOF

  local lspkind = require "lspkind"
  lspkind.init()

  -- Setup nvim-cmp.
  local cmp = require "cmp"

  cmp.setup {
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
      ["<c-y>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      ["<c-space>"] = cmp.mapping.complete(),
    },

    sources = {
      { name = "gh_issues" },
      { name = "nvim_lua" },
      { name = "nvim_lsp" },
      { name = "path" },
      { name = "luasnip" },
      { name = "buffer", keyword_length = 5 },
    },

    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },

    formatting = {
      format = lspkind.cmp_format {
        with_test = true,
        menu = {
          buffer = "[buf]",
          nvim_lsp = "[LSP]",
          nvim_lua = "[api]",
          path = "[path]",
          luasnip = "[snip]",
          gh_issues = "[issues]",
        },
      },
    },

    experimental = {
      native_menu = false,
      ghost_text = true,
    },

  }


  --[[
  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities
  },
  --]]

EOF


" " nvim-cmp
" set completeopt=menu,menuone " ,noselect
" " set omnifunc=syntaxcomplete#Complete



