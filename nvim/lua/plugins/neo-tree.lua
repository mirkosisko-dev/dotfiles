return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      -- "nvim-lua/plenary.nvim", -- Already installing in telescope
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal right<CR>", {})
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
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
