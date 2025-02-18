local colorscheme = vim.env.COLORSCHEME or "tokyonight"

return {
	{
		"catppuccin/nvim",
		enabled = colorscheme == "catppuccin",
		name = "catppuccin",
		lazy = true,
		opts = {
			flavour = "mocha",
			-- transparent_background = true,
			no_italic = true,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"folke/tokyonight.nvim",
		enabled = colorscheme == "tokyonight",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			no_italic = true,
			dim_inactive = true,
			plugins = { auto = true },
			-- styles = {
			-- 	comments = "none",
			-- 	keywords = "none",
			-- 	functions = "none",
			-- 	variables = "none",
			-- },
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}
