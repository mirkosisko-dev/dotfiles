local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Jumping half page
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })

-- Keep search terms in the middle of the screen
keymap.set("n", "n", "nzzzv", { desc = "Jump to next search term" })
keymap.set("n", "N", "Nzzzv", { desc = "Jump to previous search term" })

-- Disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd>echo "Use h to move"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move"<CR>')

-- Shift + J/K moves selected lines down/up in visual Mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected line up" })

-- Open Todos
keymap.set("n", "<leader>owt", ":vsplit ~/work/todo<cr>", { desc = "Open work todos" })
keymap.set("n", "<leader>opt", ":vsplit ~/personal/todo<cr>", { desc = "Open personal todos" })

-- Resize Windows
keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]], { desc = "Make the window bigger vertically" })
keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]], { desc = "Make the window smaller vertically" })
keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]], { desc = "Make the window bigger horizontally" })
keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]], { desc = "Make the window smaller horizontally" })

-- Delete without copying
keymap.set({ "n", "v" }, "<leader>x", '"_x', { desc = "Delete character without copying into register" })
keymap.set({ "n", "v" }, "<leader>X", '"_dd', { desc = "Delete line without copying into register" })
