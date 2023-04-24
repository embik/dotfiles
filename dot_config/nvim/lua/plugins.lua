local use = require('packer').use
local util = require('packer.util')

require('packer').startup({function()
    use 'wbthomason/packer.nvim'       	-- Package manager
    use 'Shatur/neovim-ayu'		        -- color scheme (Ayu)
  
    -- Git plugins
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use 'lewis6991/gitsigns.nvim'         -- git signs
  
    -- LSP integration, debugging, syntax highlighting
    use 'neovim/nvim-lspconfig'        	                                    -- Collection of configurations for built-in LSP client
    use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons'}   -- Adds UI to review LSP findings
    use 'nvim-treesitter/nvim-treesitter'                                   -- Better synxtax highlighting through tree-sitter
    use 'mfussenegger/nvim-dap'                                             -- DAP (debug adapter protocol) support
    use 'rcarriga/nvim-dap-ui'                                              -- UI plugin for nvim-dap

    -- Autocompletion & snippets
    use {'L3MON4D3/LuaSnip', requires = 'saadparwaiz1/cmp_luasnip' } -- snippet support 
    use 'rafamadriz/friendly-snippets' -- provide some nice snippets
    use {'hrsh7th/nvim-cmp', requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'onsails/lspkind-nvim',
    }}

    -- UI to select things (files, grep results, open buffers...)
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
  
    -- Status & tab line
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
    use {'kdheepak/tabline.nvim'}

    -- File explorer
    use {'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons'}

    -- UI/UX plugins
    use 'folke/which-key.nvim'                                            -- helps with the keyboard shortcuts
    use '907th/vim-auto-save'                                             -- save files automatically to disk
    use 'lukas-reineke/indent-blankline.nvim'                             -- indents blank lines
end, config = {
    -- use a snapshot
    -- snapshot = '2022-04-16',
    snapshot_path = util.join_paths(vim.fn.stdpath('config'), 'snapshots'),
    compile_path = util.join_paths(vim.fn.stdpath('cache'), 'plugin', 'packer_compiled.lua')
}})
