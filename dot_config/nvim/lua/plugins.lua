local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim'       	-- Package manager
  use 'ayu-theme/ayu-vim'		-- color scheme (Ayu)
  
  -- Language stuff
  use 'neovim/nvim-lspconfig'        	-- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe'           	-- Autocompletion plugin
  use 'nvim-treesitter/nvim-treesitter' -- better synxtax highlighting thorugh tree-sitter
  use 'sebdah/vim-delve'                -- delve (go debugger) integration

  -- UI to select things (files, grep results, open buffers...)
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  
  -- Status lines (bottom galaxy line plus top buffer line)
  use {'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  
  -- File explorer
  use "kyazdani42/nvim-tree.lua"
  use "ryanoasis/vim-devicons"

  -- UI/UX plugins
  use 'folke/which-key.nvim'
  use {'lukas-reineke/indent-blankline.nvim', branch = "lua"}
end)
