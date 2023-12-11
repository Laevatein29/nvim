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
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  -- packer async
  use 'wbthomason/packer.nvim'
  -- theme
  use 'folke/tokyonight.nvim'
  -- lualine （status bar）
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- nvim tree （file route reader）
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', 
    },
  }
  -- nvim terminal management tool 
  use("christoomey/vim-tmux-navigator")
  -- hightlight words
  use("nvim-treesitter/nvim-treesitter")
  -- ts rainbow 
  use "p00f/nvim-ts-rainbow"  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
