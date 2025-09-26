return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "left", -- 📌 Aquí está la clave
      }
    })
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true, desc = "Toggle Neo-tree" })
  end
}

