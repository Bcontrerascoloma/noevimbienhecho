-- ~/.config/nvim/lua/plugins/lsp.lua

return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true, -- This is a shorthand for the default config function
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "pyright",
        "lua_ls",
        "texlab",
        "tsserver",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- The config function will be called by lazy.nvim
    config = function()
      -- This setup is handled automatically by mason-lspconfig,
      -- but you can add custom setups here if needed.
      -- require('lspconfig').pyright.setup({}) is not strictly necessary
      -- if you use the defaults provided by mason-lspconfig.
    end,
  },
}
