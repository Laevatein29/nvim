local opt = vim.opt

-- index of line
-- opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- no wrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- use mouse
opt.mouse:append("a")

-- use clipboard
opt.clipboard:append("unnamedplus")

-- default window position
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- display
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]
