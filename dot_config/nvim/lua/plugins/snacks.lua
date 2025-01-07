return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bufdelete = { enabled = true },
        lazygit = { enabled = true },
        notifier = { enabled = false },
        quickfile = { enabled = true },
        rename = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
}
