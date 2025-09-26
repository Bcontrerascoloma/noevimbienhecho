return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_view_general_viewer = "evince"
    vim.g.vimtex_view_general_options = "@pdf"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_imaps_enabled = 0
  end,
}

