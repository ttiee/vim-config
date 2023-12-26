

-- Plugin manager: lazy loading
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Plugins
local plugins = {
    "folke/tokyonight.nvim", -- 主题
    "nvim-lualine/lualine.nvim",  -- 状态栏
    "nvim-tree/nvim-tree.lua",  -- 文档树
    "nvim-tree/nvim-web-devicons", -- 文档树图标
}
local opts = {} -- 注意要定义这个变量


-- Setup lazy loading
require("lazy").setup(plugins, opts)
