-- everforest
return {
  -- 'folke/tokyonight.nvim',
  'mcchrish/zenbones.nvim',
  dependencies = {
    'rktjmp/lush.nvim',
  },
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require 'rktjmp/lush.nvim'
    vim.opt.termguicolors = true
    vim.opt.background = 'dark'
    -- vim.cmd [[colorscheme tokyonight-moon]]
    vim.cmd [[colorscheme forestbones]]
  end,
}
--
