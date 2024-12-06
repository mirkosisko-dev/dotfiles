return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<leader>ee", ":Neotree filesystem toggle right<CR>", { desc = "Toggle file explorer" })
      vim.keymap.set("n", "<leader>ef", ":Neotree reveal<CR>", { desc = "Toggle file explorer on current file" })
			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
						hide_gitignored = true,
						hide_by_name = {
							".git",
							".DS_Store",
						},
						always_show = {
							".env",
						},
						never_show = {},
					},
				},
				event_handlers = {
					{
						event = "file_open_requested",
						handler = function()
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
				close_if_last_window = true,
			})
		end,
	},
}
