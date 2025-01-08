return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-ts-autotag").setup()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			auto_install = true,
			sync_install = true,
			ensure_installed = {
				"bash",
				"comment",
				"css",
				"dockerfile",
				"dot",
				"gitignore",
				"go",
				"graphql",
				"gomod",
				"gosum",
				"gowork",
				"html",
				"http",
				"javascript",
				"json",
				"json5",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"prisma",
				"regex",
				"sql",
				"tmux",
				"toml",
				"tsx",
				"typescript",
				"xml",
				"yaml",
				"bash",
				"vim",
				"query",
				"vimdoc",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<Tab>",
					node_decremental = "<S-Tab>",
				},
			},
		})
	end,
}
