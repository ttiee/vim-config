

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


-----------------------tokyonight-----------------------
local tokyonight = {
    "folke/tokyonight.nvim",    -- 主题
    lazy = false,
    priority = 1000,
    opts = {},
}


-----------------------lualine-----------------------
local lualine = {
        'nvim-lualine/lualine.nvim',    -- 状态栏
        dependencies = { 'nvim-tree/nvim-web-devicons' }
}

-----------------------nvim-tree-----------------------
local nvim_tree = {
    'kyazdani42/nvim-tree.lua',    -- 文件树
}

-----------------------nvim-autopairs-----------------------
local nvim_autopairs = {
    'windwp/nvim-autopairs',    -- 自动补全括号
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
}

-----------------------nvim-treesitter-----------------------
local treesitter = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }

------------------------Plugin Manager------------------------
local plugins = {
    tokyonight,    -- 主题
    lualine,    -- 状态栏
    nvim_tree,    -- 文件树
    nvim_autopairs,    -- 自动补全括号
    treesitter    -- 语法高亮
}
local opts = {} -- 注意要定义这个变量


------------------------Setup------------------------
require("lazy").setup(plugins, opts)
