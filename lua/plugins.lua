return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  { "rafamadriz/friendly-snippets" },
  { "micangl/cmp-vimtex" },
  {
    "lervag/vimtex",
    lazy = false
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp"
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
		-- ~/.config/nvim/lua/plugins/latex.lua
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.vimtex_view_method = "zathura"  -- Cambia a "skim", "sumatrapdf", etc. según tu sistema
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
  }
}

