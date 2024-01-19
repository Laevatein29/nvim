return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      -- gitsigns
      signs = {
        add = { hl = 'GitSignsAdd', text = '+' },
        change = { hl = 'GitSignsChange', text = '~' },
        delete = { hl = 'GitSignsDelete', text = '_' },
        topdelete = { hl = 'GitSignsDelete', text = '‾' },
        changedelete = { hl = 'GitSignsChange', text = '~' },
      },
      keymaps = {
        noremap = true,
        buffer = true,
      },
    }
  end,
}
