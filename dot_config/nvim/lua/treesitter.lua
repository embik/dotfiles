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
        "hcl",
        "gleam",
        "vimdoc",
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

-- help neovim understand *.gleam files are gleam files (???)
vim.cmd("au BufRead,BufNewFile *.gleam set filetype=gleam")
