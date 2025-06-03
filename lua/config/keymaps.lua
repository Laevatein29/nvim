-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set
map("n", "<Leader>sv", "<C-w>v", { desc = "vertical", remap = true })
map("n", "<Leader>sh", "<C-w>s", { desc = "horizon", remap = true })
map("n", "<Leader>eh", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<Leader>ej", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<Leader>ek", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<Leader>el", "<C-w>l", { desc = "Go to Right Window", remap = true })
map("n", "<Leader>fg", LazyVim.pick("live_grep"), { desc = "live_grep", remap = true })
map("n", "<leader>fT", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
map("n", "<leader>tf", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

map("t", "qt", "<C-\\><C-n>", { noremap = true, desc = "quit terminal" })
