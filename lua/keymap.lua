vim.g.mapleader = ' '
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- terminal mode
vim.api.nvim_set_keymap('t', 'qt', '<C-\\><C-n>', { noremap = true })

-- insert mode
keymap.set('i', 'jk', '<ESC>')

-- normal mode
-- window
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')

keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>c', '<Cmd>TermOpen<CR>', opts)
keymap.set('n', '<leader>c1', ':1TermOpen<CR>')

-- Better window movement
keymap.set('n', '<leader>eh', '<C-w>h')
keymap.set('n', '<leader>ej', '<C-w>j')
keymap.set('n', '<leader>ek', '<C-w>k')
keymap.set('n', '<leader>el', '<C-w>l')

-- switch buffer
keymap.set('n', '<leader>bj', '<Cmd>BufferPrevious<CR>')
keymap.set('n', '<leader>bk', '<Cmd>BufferNext<CR>')
keymap.set('n', '<leader>bc', '<Cmd>BufferClose<CR>')
keymap.set('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', '<leader>b0', '<Cmd>BufferLast<CR>', opts)
