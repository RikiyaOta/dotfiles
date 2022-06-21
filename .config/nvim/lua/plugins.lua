vim.cmd[[packadd packer.nvim]]

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-lua/plenary.nvim'
  use "jose-elias-alvarez/null-ls.nvim"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"
end)
