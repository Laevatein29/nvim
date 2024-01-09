local builtin = require('telescope.builtin')

-- attention!! should install ripgrep in environment
-- It will be insert mode when getting into telescope, use j, k to move when getting back to normal mode
--
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
