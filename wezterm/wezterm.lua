local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "Catppuccin Mocha",
	font_size = 18,

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
	font = wezterm.font("JetBrainsMono Nerd Font"),
}

return config
