local opt = vim.opt

-- Linebreak on word instead of character
opt.linebreak = true

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Misc
vim.wo.number = true
vim.wo.relativenumber = true
vim.api.nvim_set_hl(0, "LineNr", { fg = "#b4befe" })
