-- Define a custom highlight group for yank
vim.cmd([[
  highlight YankHighlight guibg=#7287fd guifg=NONE
]])

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "YankHighlight",
			timeout = 50, -- Highlight lasts 50 ms
		})
	end,
})
