-- custom keymaps
vim.g.mapleader = " "
local keymap = vim.keymap
local input = vim.fn.input
local cmd = vim.cmd
local opts = { noremap = true, silent = true }
local buitlin = require("telescope.builtin")
local trouble = require("trouble")
-- terminal mode
keymap.set("t", "qt", "<C-\\><C-n>", { noremap = true })

-- insert mode
keymap.set("i", "jk", "<ESC>")

-- normal mode
--
-- window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- nvim-tree
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>")

-- telescope
keymap.set("n", "<leader>ff", buitlin.find_files, { noremap = true, silent = true })
keymap.set("n", "<leader>fg", buitlin.live_grep, { noremap = true, silent = true })
keymap.set("n", "<leader>fb", buitlin.buffers, { noremap = true, silent = true })
keymap.set("n", "<leader>fh", buitlin.help_tags, { noremap = true, silent = true })

-- Better window movement
keymap.set("n", "<leader>eh", "<C-w>h")
keymap.set("n", "<leader>ej", "<C-w>j")
keymap.set("n", "<leader>ek", "<C-w>k")
keymap.set("n", "<leader>el", "<C-w>l")

-- switch buffer
keymap.set("n", "<leader>bj", "<Cmd>BufferPrevious<CR>")
keymap.set("n", "<leader>bk", "<Cmd>BufferNext<CR>")
keymap.set("n", "<leader>bc", "<Cmd>BufferClose<CR>")
keymap.set("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
keymap.set("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", opts)
keymap.set("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", opts)
keymap.set("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", opts)
keymap.set("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", opts)
keymap.set("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)

-- Terminal
keymap.set("n", "<leader>t1", "<Cmd>1TermOpen<CR>")
keymap.set("n", "<leader>t2", "<Cmd>2TermOpen<CR>")

-- Mark
--
local function del_mark()
	local target_mark = input("Enter target mark: ")
	cmd("delm " .. target_mark)
	print(target_mark)
end
keymap.set("n", "<leader>dma", "<Cmd>delm!<CR>")
keymap.set("n", "<leader>dms", del_mark, { noremap = true, silent = true })

-- Trouble
--
keymap.set("n", "<leader>tr", function()
	trouble.toggle()
end)
