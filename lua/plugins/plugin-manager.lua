

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
-----------------------copilot------------------------------
local copilot_vim = {
    "github/copilot.vim",
}

vim.cmd [[
let g:copilot_filetypes = { 'markdown': v:true, }
]]

local copilot_lua = {
    "zbirenbaum/copilot.lua",
    config = function ()
    require("copilot").setup({
        panel = {
            enabled = true,
            auto_refresh = false,
            keymap = {
              jump_prev = "[[",
              jump_next = "]]",
              accept = "<CR>",
              refresh = "gr",
              open = "<M-CR>"
            },
            layout = {
              position = "bottom", -- | top | left | right
              ratio = 0.4
            },
          },
        suggestion = {
            enabled = true,
            auto_trigger = false,
            debounce = 75,
            keymap = {
              accept = "<M-l>",
              accept_word = false,
              accept_line = false,
              next = "<M-]>",
              prev = "<M-[>",
              dismiss = "<C-]>",
            },
          },
        filetypes = {
            yaml = false,
            markdown = true,
            help = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ["."] = false,
          },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        server_opts_overrides = {},
    })
    end
}

-- vim.g.copilot_filetypes = {
--        'markdown': true,
-- }


------------------------Plugin Manager------------------------
local plugins = {
    tokyonight,    -- 主题
    lualine,    -- 状态栏
    nvim_tree,    -- 文件树
    nvim_autopairs,    -- 自动补全括号
    treesitter,    -- 语法高亮
    {'neoclide/coc.nvim', branch = 'release'},
    copilot_vim,
}
local opts = {} -- 注意要定义这个变量


------------------------Setup------------------------
require("lazy").setup(plugins, opts)
