--Incremental live completion
vim.o.inccommand = "nosplit"

--Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

--Make line numbers default
vim.wo.number = true

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
vim.cmd[[set undofile]]

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn="yes"

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.cmd("colorscheme ayu")

--Incremental live completion
vim.o.inccommand = "nosplit"

--Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

--Make line numbers default
vim.wo.number = true

--Do not save when switching buffers
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = "a"

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.cmd[[set undofile]]

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn="yes"

-- Set clipboard
vim.o.clipboard = "unnamedplus"

-- Pretty tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- enable autosave
vim.g.auto_save = true

-- keyboard shortcuts for quickly switching between buffers
vim.api.nvim_set_keymap("n", "<C-j>", ":bprev<CR>", {noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", ":bnext<CR>", {noremap = true,silent = true})

-- set up visible characters for tabs and spaces
vim.opt.list = true

local space = "·"
vim.opt.listchars:append {
	tab = "│─",
	multispace = space,
	lead = space,
	trail = space,
	nbsp = space
}
