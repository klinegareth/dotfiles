local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'junegunn/goyo.vim' -- Goyo
  use 'junegunn/fzf' -- fzf
  use 'jiangmiao/auto-pairs' -- Autopairs
  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function() -- Toggleterm
    require("toggleterm").setup()
  end}
  use 'dkarter/bullets.vim' -- Bullets
  use 'morhetz/gruvbox' -- gruvbox
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  use "ms-jpq/coq_nvim"
  use "preservim/nerdtree"
  use 'ryanoasis/vim-devicons' -- Nvim-web-devicons
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'nvim-treesitter/nvim-treesitter'
  use 'github/copilot.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)

