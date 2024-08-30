return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
            add = { text = "▌" },
            change = { text = "▌" },
            delete = { text = "_" },
            topdelete = { text = "‾" },
            changedelete = { text = "~" }
        },
        numhl = false,
        watch_gitdir = {
            interval = 100
        },
        sign_priority = 5,
        status_formatter = nil -- Use default
        },
    },
    {
         'NeogitOrg/neogit',
        lazy = true,
        cmd = "Neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",                -- required
            "nvim-telescope/telescope.nvim",        -- optional
            "sindrets/diffview.nvim",               -- optional
            "ibhagwan/fzf-lua",                     -- optional
        },
    },
    {
        "f-person/git-blame.nvim",
    },
    {
        "sindrets/diffview.nvim",
    },
}
