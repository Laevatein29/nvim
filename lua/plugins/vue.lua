-- use customed vue config for locking volar version
vim.api.nvim_create_autocmd("FileType", {
  pattern = "vue",
  callback = function() vim.opt_local.commentstring = "<!--%s-->" end,
})
return {
  { import = "astrocommunity.pack.typescript" },
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      config = {
        volar = {
          init_options = {
            vue = {
              hybridMode = false,
            },
          },
          settings = {
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
            javascript = {
              updateImportsOnFileMove = { enabled = "always" },
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
          },
        },
        vtsls = {
          settings = {
            vtsls = {
              tsserver = {
                globalPlugins = {},
              },
            },
          },
          before_init = function(_, config)
            local astrocore_ok, astrocore = pcall(require, "astrocore")
            local registry_ok, registry = pcall(require, "mason-registry")
            if not astrocore_ok or not registry_ok then return end

            local volar_install_path = registry.get_package("vue-language-server"):get_install_path()
              .. "/node_modules/@vue/language-server"

            local vue_plugin_config = {
              name = "@vue/typescript-plugin",
              location = volar_install_path,
              languages = { "vue" },
              configNamespace = "typescript",
              enableForWorkspaceTypeScriptVersions = true,
            }

            astrocore.list_insert_unique(config.settings.vtsls.tsserver.globalPlugins, { vue_plugin_config })
          end,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "vue" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "volar@1.8.27",
          "ts_ls",
        },
      }
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "js" })
    end,
  },
  -- {
  --   "WhoIsSethDaniel/mason-tool-installer.nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.ensure_installed =
  --       require("astrocore").list_insert_unique(opts.ensure_installed, { "vue-language-server", "js-debug-adapter" })
  --   end,
  -- },
}
