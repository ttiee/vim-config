vim.g.mapleader = ' ' -- 设置leader键为<Space>

local map = vim.keymap
-------------------- 插入模式 --------------------
map.set('i', 'jk', '<Esc>') -- jk退出插入模式
-------------------- 视觉模式 --------------------
-- 单行或多行移动
map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '<-2<CR>gv=gv")
-------------------- 正常模式 --------------------
-- 窗口分割
map.set('n', '<leader>sv', '<C-w>v') -- 垂直分割窗口
map.set('n', '<leader>sh', '<C-w>s') -- 水平分割窗口
-- 关闭搜索高亮
map.set('n', '<leader>nh', ':nohl<CR>') -- 关闭搜索高亮
