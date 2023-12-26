

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
    {
        "folke/tokyonight.nvim",    -- 主题
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'nvim-lualine/lualine.nvim',    -- 状态栏
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    "nvim-tree/nvim-tree.lua",   -- 文件树
    {
        'windwp/nvim-autopairs',    -- 自动补全括号
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }
}
local opts = {} -- 注意要定义这个变量


-- Setup lazy loading
require("lazy").setup(plugins, opts)
