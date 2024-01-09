vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        -- use nvim inner lsp
        diagnostics = "nvim_lsp",
        -- set a left-position for nvim-tree
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
