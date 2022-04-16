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
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
  
  -- Status line
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use {'kdheepak/tabline.nvim'}

  -- File explorer
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}

  -- UI/UX plugins
  use 'folke/which-key.nvim'                                            -- helps with the keyboard shortcuts
  use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons'} -- adds UI to review LSP findings
  use '907th/vim-auto-save'                                             -- save files automatically to disk
  use 'lukas-reineke/indent-blankline.nvim'                             -- indents blank lines
end)
