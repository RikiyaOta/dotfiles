vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
end)
end)
