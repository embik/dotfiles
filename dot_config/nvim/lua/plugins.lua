local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim'       	-- Package manager
  use 'ayu-theme/ayu-vim'		-- color scheme (Ayu)
  
  -- Git plugins
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'lewis6991/gitsigns.nvim'         -- git signs
  
  -- Language stuff
  use 'neovim/nvim-lspconfig'        	-- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe'           	-- Autocompletion plugin
  use 'L3MON4D3/LuaSnip'                -- snippet support 
  use 'nvim-treesitter/nvim-treesitter' -- better synxtax highlighting thorugh tree-sitter
  use 'mfussenegger/nvim-dap'           -- DAP (debug adapter protocol) support
  use 'rcarriga/nvim-dap-ui'            -- UI plugin for nvim-dap

  -- UI to select things (files, grep results, open buffers...)
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
        require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
    end
  }
  
  -- Status lines (bottom galaxy line plus top buffer line)
  use {'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  
  -- File explorer
  use "kyazdani42/nvim-tree.lua"
  use "ryanoasis/vim-devicons"

  -- UI/UX plugins
  use 'folke/which-key.nvim'            -- helps with the keyboard shortcuts
  use '907th/vim-auto-save'             -- save files automatically to disk
  use 'lukas-reineke/indent-blankline.nvim'
end)
