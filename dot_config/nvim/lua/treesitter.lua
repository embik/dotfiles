require("nvim-treesitter.configs").setup {
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
        "hcl"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
