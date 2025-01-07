return {
    {
        'L3MON4D3/LuaSnip',
        lazy = true,
        dependencies = { 'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets' },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
}
