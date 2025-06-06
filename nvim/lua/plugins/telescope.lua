return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
				file_ignore_patterns = {
					"node_modules/.*",
					"\\.git/.*",
					"\\.next/.*",
					"lazy%-lock.json",
					"package%-lock.json",
					"yarn.lock",
				},
				pickers = {
					find_files = {
						hidden = true,
						no_ignore = true,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- Keymaps
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>cs", builtin.colorscheme, { desc = "Select colorscheme" })
	end,
}
