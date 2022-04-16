require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    globalstatus = true,
  }
}

require('tabline').setup {
    enable = true,
    options = {
        show_bufnr = true,
        show_filename_only = true,
    },
}

vim.cmd[[
    set guioptions-=e " Use showtabline in gui vim
    set sessionoptions+=tabpages,globals " store tabpages and globals in session
]]
