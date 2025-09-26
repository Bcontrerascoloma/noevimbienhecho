-- ~/.config/nvim/init.lua

-- Basic Neovim options
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.g.mapleader = " "

-- Lazy.nvim bootstrap
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

-- Load plugins from the 'lua/plugins' directory
require("lazy").setup("plugins")

-- Optional: You can keep this if you still have this file
require("config.autosave")
