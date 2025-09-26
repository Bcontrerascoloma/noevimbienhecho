-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- Snippet Engine & its sources
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",

    -- LSP source
    "hrsh7th/cmp-nvim-lsp",

    -- Other useful sources
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    -- VimTeX source for LaTeX
    "micangl/cmp-vimtex",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- Load snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      -- Order of sources matters!
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vimtex" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
