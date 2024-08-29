return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function () 
          local configs = require("nvim-treesitter.configs")

          configs.setup({
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
}

