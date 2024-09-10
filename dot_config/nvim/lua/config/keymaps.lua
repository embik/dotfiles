-- key map for quickly switching between buffers
vim.api.nvim_set_keymap("n", "<C-j>", ":bprev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":bnext<CR>", { noremap = true, silent = true })

-- Dynamic key map for fold preview or LSP hover
vim.keymap.set('n', 'K', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end
end)

