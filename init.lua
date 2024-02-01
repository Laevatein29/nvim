local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end


vim.api.nvim_command('set iskeyword-=_')

vim.opt.rtp:prepend(lazypath)
-- 设置背景透明
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')
vim.cmd('highlight SignColumn guibg=none')
vim.cmd('highlight LineNr guibg=none')
vim.cmd('highlight CursorLineNr guibg=none')
vim.cmd('highlight EndOfBuffer guibg=none')
vim.cmd('highlight VertSplit guibg=none')
vim.cmd('highlight StatusLine guibg=none')
vim.cmd('highlight StatusLineNC guibg=none')
vim.cmd('highlight FoldColumn guibg=none')
-- 设置补全下拉框透明
vim.cmd('highlight Pmenu guibg=none')
vim.cmd('highlight PmenuSel guibg=#4b5263')
-- 在 init.lua 中启用自动跳转
require 'base'
require 'neovide'
require 'keymap'
require('lazy').setup 'plugins'
