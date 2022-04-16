require'nvim-tree'.setup {
 filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  }, 
}

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true,silent = true})
