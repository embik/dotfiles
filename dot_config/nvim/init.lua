-- leader key
vim.g.mapleader = ","

-- enable new global status line
-- requires neovim 0.7
vim.go.laststatus = 3

-- Base setup (packer, plugins, base nvim config)
require('packer-setup')         -- Ensure packer is installed
require('plugins')              -- Import plugins
require('base-config')          -- Set up better basic neovim experience

-- Plugin configurations
require('git-signs')            -- gitsigns.nvim config
require('git')                  -- neogit config
require('lsp')                  -- Configure language server integration
require('completion')           -- Autocompletion through compe
require('treesitter')           -- tree-sitter for better syntax highlighting
require('debug-adapters')       -- debug adapters via nvim-dap
require('statusline')           -- galaxyline configuration (bottom statusline)
require('whichkey')             -- Set up which-key for key hints
require('tree')                 -- Configure nvim-tree (file browser)
require('nvim-telescope')       -- nvim-telescope configuration
require('trouble-ui')           -- Set up :Trouble to show LSP findings
require('indent-blankline')     -- Configure indent-blankline
require('diff-view')            -- Configure diffview
require('test')                 -- Configure neotest
