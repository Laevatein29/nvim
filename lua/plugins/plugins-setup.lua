-- auto install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- auto update plugins when save files
-- change PackerCompile into PackerSync
-- change plugins.lua into plugins-setup.lua to adjust loacle name
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- theme
  use {
    'nvim-lualine/lualine.nvim',  -- status bar
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- status bar devicons
  }
  use {
    'nvim-tree/nvim-tree.lua',  -- doc tree
    requires = {
      'nvim-tree/nvim-web-devicons', -- doc tree devicons
    }
  }
  use "christoomey/vim-tmux-navigator" -- use ctl-hjkl to position window
  use "nvim-treesitter/nvim-treesitter" -- language highlight
  use "p00f/nvim-ts-rainbow" -- use with treesitter，distinguish different brackets with different color
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- as a bridge of mason.nvim and lspconfig
    "neovim/nvim-lspconfig"
  }
    -- auto complete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets engine which control auto complete
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- file routers

  use "numToStr/Comment.nvim" -- comment of gcc and gc
  use "windwp/nvim-autopairs" -- auto complete brackets

  use "akinsho/bufferline.nvim" -- buffer divider
  use "lewis6991/gitsigns.nvim" -- git signs

  use "yamatsum/nvim-cursorline"

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- search doc
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
