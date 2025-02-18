-- Define a custom highlight group for yank
vim.cmd([[
  highlight YankHighlight guibg=#7287fd guifg=NONE
]])

local function augroup(name)
	return vim.api.nvim_create_augroup(name, { clear = true })
end

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = augroup("highlight-yank"),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "YankHighlight",
			timeout = 50, -- Highlight lasts 50 ms
		})
	end,
})

-- Show cursor line only in active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
	group = augroup("auto_cursorline_show"),
	callback = function(event)
		if vim.bo[event.buf].buftype == "" then
			vim.opt_local.cursorline = true
		end
	end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
	group = augroup("auto_cursorline_hide"),
	callback = function()
		vim.opt_local.cursorline = false
	end,
})

-- Consistent colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
	group = vim.api.nvim_create_augroup("wezterm_colorscheme", { clear = true }),
	callback = function(args)
		local colorschemes = {
			["tokyonight-storm"] = "Tokyo Night Storm",
			["tokyonight-night"] = "Tokyo Night",
			["catppuccin-macchiato"] = "Catppuccin Macchiato",
			["catppuccin-mocha"] = "Catppuccin Mocha",
			-- add more color schemes here ...
		}
		local colorscheme = colorschemes[args.match]
		if not colorscheme then
			return
		end
		-- Write the colorscheme to a file
		local filename = vim.fn.expand("$HOME/.config/wezterm/colorscheme")
		assert(type(filename) == "string")
		local file = io.open(filename, "w")
		assert(file)
		file:write(colorscheme)
		file:close()
		vim.notify("Setting WezTerm color scheme to " .. colorscheme, vim.log.levels.INFO)
	end,
})
