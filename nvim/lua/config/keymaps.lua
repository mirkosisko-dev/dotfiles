local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Navigate vim panes
keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Navigate to the top pane" })
keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Navigate to the bottom pane" })
keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Navigate to the left pane" })
keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Navigate to the right pane" })

-- Tmux navigation
keymap.set(
	"n",
	"<M-h>",
	'<Cmd>lua require("tmux").resize_left()<CR>',
	{ silent = true, desc = "Navigate to the left tmux pane" }
)
keymap.set(
	"n",
	"<M-j>",
	'<Cmd>lua require("tmux").resize_bottom()<CR>',
	{ silent = true, desc = "Navigate to the bottom tmux pane" }
)
keymap.set(
	"n",
	"<M-k>",
	'<Cmd>lua require("tmux").resize_top()<CR>',
	{ silent = true, desc = "Navigate to the top tmux pane" }
)
keymap.set(
	"n",
	"<M-l>",
	'<Cmd>lua require("tmux").resize_right()<CR>',
	{ silent = true, desc = "Navigate to the right tmux pane" }
)

-- Window management
keymap.set("n", "ss", ":vsplit<Return>", { desc = "Split window horizontally" })
keymap.set("n", "sv", ":split<Return>", { desc = "Split window vertically" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
