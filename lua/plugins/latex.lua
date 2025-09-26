-- ~/.config/nvim/lua/plugins/latex.lua

return {
  "lervag/vimtex",
  ft = { "tex" }, -- Use ft (filetype) to lazy load for better performance
  config = function()
    vim.g.vimtex_view_method = "zathura" -- Changed to zathura as it's often better integrated
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
        options = {
            '-pdf',
            '-shell-escape',
            '-verbose',
            '-file-line-error',
            '-synctex=1',
            '-interaction=nonstopmode'
        }
    }
  end,
}
