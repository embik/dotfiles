return {
    {
        "mfussenegger/nvim-dap",
        lazy = true,
        keys = {
            { '<F5>',       '<cmd>lua require("dap").continue()<cr>',          desc = "Debug Continue" },
            { '<F10>',      '<cmd>lua require("dap").step_over()<cr>',         desc = "Step Over" },
            { '<F11>',      '<cmd>lua require("dap").step_into()<cr>',         desc = "Step Into" },
            { '<F12>',      '<cmd>lua require("dap").step_out()<cr>',          desc = "Step Out" },
            { '<leader>b',  '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = "Toggle Breakpoint" },
            { '<leader>dr', '<cmd>lua require("dap").repl.open()<cr>',         desc = "Open REPL" },
        },
        config = function()
            local dap = require('dap')
            -- c/c++/rust debugging
            -- requires the llvm package installed via homebrew
            dap.adapters.lldb = {
                type = 'executable',
                command = '/opt/homebrew/opt/llvm/bin/lldb-vscode',
                name = "lldb"
            }

            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                    args = {},
                    runInTerminal = false,
                },
            }

            -- mirror c++ configuration into c and rust
            dap.configurations.c = dap.configurations.cpp
            dap.configurations.rust = dap.configurations.cpp

            -- go debugging
            -- requires the delve package installed via  homebrew
            dap.adapters.go = function(callback, config)
                local stdout = vim.loop.new_pipe(false)
                local handle
                local pid_or_err
                local port = 38697
                local opts = {
                    stdio = { nil, stdout },
                    args = { "dap", "-l", "127.0.0.1:" .. port },
                    detached = true
                }
                handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
                    stdout:close()
                    handle:close()
                    if code ~= 0 then
                        print('dlv exited with code', code)
                    end
                end)
                assert(handle, 'Error running dlv: ' .. tostring(pid_or_err))
                stdout:read_start(function(err, chunk)
                    assert(not err, err)
                    if chunk then
                        vim.schedule(function()
                            require('dap.repl').append(chunk)
                        end)
                    end
                end)
                -- Wait for delve to start
                vim.defer_fn(
                    function()
                        callback({ type = "server", host = "127.0.0.1", port = port })
                    end,
                    250)
            end
            -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
            dap.configurations.go = {
                {
                    type = "go",
                    name = "Debug",
                    request = "launch",
                    program = "${workspaceFolder}"
                },
                {
                    type = "go",
                    name = "Debug test", -- configuration for debugging test files
                    request = "launch",
                    mode = "test",
                    program = "${file}"
                },
                -- works with go.mod packages and sub packages
                {
                    type = "go",
                    name = "Debug test (go.mod)",
                    request = "launch",
                    mode = "test",
                    program = "./${relativeFileDirname}"
                }
            }

            -- allow reading a VS Code launch.json file
            require('dap.ext.vscode').load_launchjs()

            dap.setup(opts)
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        version = "*",
        lazy = true,
        dependencies = { 'nvim-neotest/nvim-nio' },
        keys = {
            { '<leader>di', '<cmd>lua require("dapui").toggle()<cr>', desc = "Toggle Debugging UI" },
        },
    },
}
