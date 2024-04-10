require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"
        },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                mirror = false,
                preview_width = 0.5
            },
            vertical = {
                mirror = false
            },
            width = 0.75,
            preview_cutoff = 120,
            prompt_position = "bottom",
        },
        file_sorter = require "telescope.sorters".get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker,
        mappings = {
            n = {
    	        ['<c-d>'] = require('telescope.actions').delete_buffer
            }, -- n
            i = {
                ["<C-h>"] = "which_key",
                ['<c-d>'] = require('telescope.actions').delete_buffer
            } -- i
        } -- mappings
    }
}

local opt = {noremap = true, silent = true}

-- mappings
vim.api.nvim_set_keymap("n", "<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fo", [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fd", [[<Cmd>lua require('telescope.builtin').diagnostics()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fr", [[<Cmd>lua require('telescope.builtin').lsp_references()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fs", [[<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fvb", [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fvs", [[<Cmd>lua require('telescope.builtin').git_status()<CR>]], opt)
