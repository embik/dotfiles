return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "html",
                    "css",
                    "lua",
                    "json",
                    "python",
                    "elixir",
                    "rust",
                    "go",
                    "yaml",
                    "toml",
                    "hcl",
                    "gleam",
                    "vimdoc",
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        'kevinhwang91/nvim-ufo',
        commit = "b23a46aa06f5f653d107efbc67fd2aa3877ac344",
        opts = {
            provider_selector = function(bufnr, filetype, buftype)
                return { 'treesitter', 'indent' }
            end
        },
        dependencies = {
            'kevinhwang91/promise-async',
        },
    },
    {
        "folke/twilight.nvim",
        lazy = true,
        opts = {},
    },
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        opts = {
            window = {
                options = {
                    number = false,
                },
            },
        },
    }
}
