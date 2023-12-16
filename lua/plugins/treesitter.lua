require'nvim-treesitter.configs'.setup {
  -- languages
  ensure_installed = { 
    "vim", 
    "bash", 
    "c", 
    "cpp", 
    "tsx", 
    "css", 
    "html",
    "scss",
    "vue",
    "javascript", 
    "typescript", 
    "json", 
    "lua", 
    "python", 
    "rust", 
    "markdown", 
    "markdown_inline" 
  }, -- one of "all" or a list of languages
  highlight = { enable = true },
  indent = { enable = true },

  -- rainbow
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
