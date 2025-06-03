return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "ts_ls",
      "volar@1.8.27",
    },
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {},
    },
    "neovim/nvim-lspconfig",
  },
}
