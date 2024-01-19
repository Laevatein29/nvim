return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { hl = 'GitSignsAdd', text = '+' },
        change = { hl = 'GitSignsChange', text = '~' },
        delete = { hl = 'GitSignsDelete', text = '_' },
        topdelete = { hl = 'GitSignsDelete', text = '‾' },
        changedelete = { hl = 'GitSignsChange', text = '~' },
      },
      keymaps = {
        -- 配置快捷键
        noremap = true,
        buffer = true,
      },
    }
  end,
}
