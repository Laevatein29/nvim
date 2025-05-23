vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
keymap.set('n', '<leader>sv', '<C-w>v', {desc = 'vertical'})
keymap.set('n', '<leader>sh', '<C-w>s', {desc = 'horizonal'})
keymap.set('n', '<leader>eh', '<C-w>h', {desc = 'left'})
keymap.set('n', '<leader>ej', '<C-w>j', {desc = 'down'})
keymap.set('n', '<leader>ek', '<C-w>k', {desc = 'up'})
keymap.set('n', '<leader>el', '<C-w>l', {desc = 'right'})
keymap.set('n', '<leader>w', ':w<CR>', {desc = 'save'})

keymap.set('n', '<leader>tf', '<Cmd>ToggleTerm<CR>', {desc = 'ToggleTerm'})
-- keymap.set('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<CR>', {desc = 'ToggleTerm float'})

keymap.set(
  'n',
  '<leader>tt',
  '<Cmd>NvimTreeToggle<CR>',
  {desc = 'Toggle Explorer'}
)

keymap.set('t', 'qt', '<C-\\><C-n>', {noremap = true, desc = "quit terminal"})
