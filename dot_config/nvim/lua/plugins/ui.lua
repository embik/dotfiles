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
}
