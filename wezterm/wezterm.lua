local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Smoother
config.max_fps = 100

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",

	-- Only keep the resizable border
	window_decorations = "RESIZE",

	-- Colorscheme
	color_scheme = "Catppuccin Mocha",

	-- Window config
	window_background_opacity = 0.8,

	-- Tab config
	colors = {
		tab_bar = {
			background = "rgba(0,0,0,0)",
		},
	},
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = false,
	-- enable_tab_bar = false,

	-- Font
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 18,
}

return config
