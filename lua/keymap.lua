vim.g.mapleader = ' '
local keymap = vim.keymap


keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
keymap.set('n', '<leader>sv', '<C-w>v', {desc = 'vertical'})
keymap.set('n', '<leader>sh', '<C-w>s', {desc = 'vertical'})
keymap.set('n', '<leader>eh', '<C-w>h', {desc = 'vertical'})
keymap.set('n', '<leader>ej', '<C-w>j', {desc = 'vertical'})
keymap.set('n', '<leader>ek', '<C-w>k', {desc = 'vertical'})
keymap.set('n', '<leader>el', '<C-w>l', {desc = 'vertical'})
keymap.set(
  'n',
  '<leader>tt',
  '<Cmd>NvimTreeToggle<CR>',
  {desc = 'Toggle Explorer'}
)
