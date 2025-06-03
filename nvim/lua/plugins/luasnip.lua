return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	config = function()
		local ls = require("luasnip")
		local config_path = vim.fn.stdpath("config")

		-- Load Lua snippets
		require("luasnip.loaders.from_lua").load({ paths = config_path .. "/snippets" })

		-- Load friendly-snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Configure LuaSnip
		ls.config.set_config({
			history = true,
			updateevents = "TextChanged,TextChangedI",
			enable_autosnippets = true,
		})
	end,
}

