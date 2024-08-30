return {
    { "nvim-tree/nvim-web-devicons", lazy = true, branch = "master" },
    { 'nvim-lua/plenary.nvim', lazy = true, branch = "master" },
    { "stevearc/dressing.nvim", event = "VeryLazy" },
    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find files" },
        { "<leader>fg", "<Cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Grep in working directory" },
        { "<leader>fb", "<Cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Manage open buffers" },
        { "<leader>fh", "<Cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "Help tags" },
        { "<leader>fo", "<Cmd>lua require('telescope.builtin').oldfiles()<cr>", desc = "Old files" },
        { "<leader>fd", "<Cmd>lua require('telescope.builtin').diagnostics()<cr>", desc = "Diagnostics" },
        { "<leader>fr", "<Cmd>lua require('telescope.builtin').lsp_references()<cr>", desc = "References" },
        { "<leader>fs", "<Cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", desc = "Symbols" },
        { "<leader>fvb", "<Cmd>lua require('telescope.builtin').git_branches()<cr>", desc = "Git Branches" },
        { "<leader>fvs", "<Cmd>lua require('telescope.builtin').git_status()<cr>", desc = "Git Status" },
    },
},
{
  { "nvim-tree/nvim-web-devicons", lazy = true },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>t", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Tree" },
      { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Tree" },
    },
    opts = {
        filters = {
        dotfiles = false,
        custom = {},
        exclude = {},
      }, 
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
},
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    preset = "modern",
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
          options = {
            icons_enabled = true,
            theme = 'auto',
            globalstatus = true,
          },
          sections = {
    lualine_x = {
      {
        require("noice").api.status.message.get_hl,
        cond = require("noice").api.status.message.has,
      },
      {
        require("noice").api.status.command.get,
        cond = require("noice").api.status.command.has,
        color = { fg = "#ff9e64" },
      },
      {
        require("noice").api.status.mode.get,
        cond = require("noice").api.status.mode.has,
        color = { fg = "#ff9e64" },
      },
      {
        require("noice").api.status.search.get,
        cond = require("noice").api.status.search.has,
        color = { fg = "#ff9e64" },
      },
    },
  },
                tabline = {
                  lualine_a = {
                    'buffers',
                },
                  lualine_b = {},
                  lualine_c = {},
                  lualine_x = {},
                  lualine_y = {},
                  lualine_z = {'tabs'}
                },
        },
    },
    {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = 8,
          col = "50%",
        },
        size = {
          width = 60,
          height = 10,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        },
      },
    },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    },
  },
}
