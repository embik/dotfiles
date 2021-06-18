-- leader key
vim.g.mapleader = ","

-- Base setup (packer, plugins, base nvim config)
require('packer-setup')         -- Ensure packer is installed
require('plugins')              -- Import plugins
require('base-config')          -- Set up better basic neovim experience

-- Plugin configurations
require('git-signs')            -- gitsigns.nvim config
require('lsp')                  -- Configure language server integration
require('completion')           -- Autocompletion through compe
require('treesitter')           -- tree-sitter for better syntax highlighting
require('statusline')           -- galaxyline configuration (bottom statusline)
require('whichkey')             -- Set up which-key for key hints
require('tree')                 -- Configure nvim-tree (file browser)
require('nvim-telescope')       -- nvim-telescope configuration
