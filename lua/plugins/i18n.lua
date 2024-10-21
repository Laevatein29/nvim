return {
  dir = "~/coding/scripts/js-i18n-leo",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
}
-- return {
--   "nabekou29/js-i18n.nvim",
--   dependencies = {
--     "neovim/nvim-lspconfig",
--     "nvim-treesitter/nvim-treesitter",
--     "nvim-lua/plenary.nvim",
--   },
--   event = { "BufReadPre", "BufNewFile" },
--   opts = {},
-- }
