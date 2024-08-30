--Incremental live completion
vim.o.inccommand = "nosplit"

--Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true


--Do not save when switching buffers
vim.o.hidden = true

vim.o.splitbelow = true
vim.o.splitright = true
vim.wo.cul = true

--Enable mouse mode
vim.o.mouse = "a"

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.cmd [[set undofile]]

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

--Set colorscheme (order is important here)
vim.o.termguicolors = true

-- Set clipboard
vim.o.clipboard = "unnamedplus"

-- Pretty tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- enable autosave
vim.g.auto_save = true

--Make line numbers default
vim.o.number = true

-- set up visible characters for tabs and spaces
vim.o.list = true
local space = "·"
vim.opt.listchars:append {
    tab = "│─",
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menu,menuone,noselect"

-- Add :Format command
vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])
--- Automatically format Go and Rust files on write
vim.cmd([[ autocmd BufWritePre *.go lua vim.lsp.buf.format({async = false }) ]])
vim.cmd([[ autocmd BufWritePre *.rs lua vim.lsp.buf.format({async = false }) ]])

-- Configure folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldcolumn = "0"
vim.o.foldtext = ""
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
