return {
    -- the colorscheme should be available when starting Neovim
    {
        "Shatur/neovim-ayu",
        commit = "6993189dd0ee38299879a1a0064718a8392e8713",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme ayu]])
        end,
    },
}
