return {
    {
        "fredrikaverpil/neotest-golang",
        lazy = true,
        ft = "go",
    },
    {
      "nvim-neotest/neotest",
      lazy = true,
      dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      keys = {
        { "<leader>tr", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
        { "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run all tests in file" },
        { "<leader>td", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug test" },
        { "<leader>ts", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop test" },
        { "<leader>ta", "<cmd>lua require('neotest').run.attach()<cr>", desc = "Attach to running test" },
        { "<leader>to", "<cmd>lua require('neotest').output.open()<cr>", desc = "Show test output" },
      },
    },
}
