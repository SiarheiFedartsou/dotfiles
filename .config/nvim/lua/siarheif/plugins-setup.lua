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
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use 'nvim-lua/plenary.nvim'

  use 'bluz71/vim-nightfly-guicolors'

  use 'numToStr/Comment.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons' -- TODO: doesn't work

  use 'nvim-lualine/lualine.nvim'

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5' }

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'onsails/lspkind.nvim'
  
  use { 'github/copilot.vim', tag = 'v1.18.0' }

  use { 'folke/which-key.nvim', tag = 'v1.6.0' } 

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
