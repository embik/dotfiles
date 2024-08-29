require("neotest").setup({
    adapters = {
        require("neotest-golang"),
    },
})

-- custom key mappings
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<Leader>tr", [[<Cmd>lua require("neotest").run.run()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tf", [[<Cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>td", [[<Cmd>lua require("neotest").run.run({strategy = "dap"})<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>ts", [[<Cmd>lua require("neotest").run.stop()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>ta", [[<Cmd>lua require("neotest").run.attach()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>to", [[<Cmd>lua require("neotest").output.open()<CR>]], opt)
