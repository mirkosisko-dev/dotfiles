vim.cmd("let g:netrw_liststyle = 3")
vim.api.nvim_set_hl(0, "LineNr", { fg = "#b4befe" })

local opt = vim.opt

-- Relative and absolute numbers
opt.relativenumber = true
opt.number = true
opt.wrap = true
opt.linebreak = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Terminal colors
opt.termguicolors = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windoes
opt.splitright = true
opt.splitbelow = true

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Spell Checker
opt.spelllang = "en_us"
opt.spell = true

-- Confirm to save changes before exiting modified buffer
opt.confirm = true
