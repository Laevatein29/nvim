vim.g.mapleader = " "
local keymap = vim.keymap

-- insert mode
keymap.set("i", "jk", "<ESC>")

-- sight mode 
-- move by single or multi line
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal mode
-- window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- --open nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

