return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        opts = {
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
        }
    },
}
