-- vim.g.mapleader = ' '
-- local keymap = vim.keymap
--
-- keymap.set('n', '<c-a>', 'ggVG')
--
-- keymap.set({ 'n', 'x' }, '<leader>p', '"0p')
--
-- keymap.set('n', '<leader>q', '<cmd>q<cr>')
-- keymap.set('n', '<leader>w', '<cmd>w<cr>')
-- keymap.set('n', '<leader>x', '<cmd>x<cr>')
--
-- keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
-- keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })
-- keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })
--
vim.g.mapleader = ' '
local keymap = vim.keymap

-- terminal mode
vim.api.nvim_set_keymap('t', 'qt', '<C-\\><C-n>', { noremap = true })

-- insert mode
keymap.set('i', 'jk', '<ESC>')

-- sight mode
-- move by single or multi line
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- normal mode
-- window
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>ss', '<C-w>s; :resize -25<CR>')
keymap.set('n', '<leader>sh', '<C-w>s')

keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Better window movement
vim.api.nvim_set_keymap(
  'n',
  '<C-h>',
  '<C-w>h',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<C-j>',
  '<C-w>j',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<C-k>',
  '<C-w>k',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<C-l>',
  '<C-w>l',
  { noremap = true, silent = true }
)
-- switch to next buffer
-- vim.api.nvim_set_keymap(
--   'n',
--   '<leader>l',
--   ':bnext<CR>',
--   { noremap = true, silent = true }
-- )
--
-- -- switch to previous buffer
-- vim.api.nvim_set_keymap(
--   'n',
--   '<leader>h',
--   ':bprevious<CR>',
--   { noremap = true, silent = true }
-- )
-- --open nvim-tree
