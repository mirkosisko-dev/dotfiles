local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Smoother
config.max_fps = 100

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",

	-- Only keep the resizable border
	window_decorations = "RESIZE",

	-- Window config
	-- window_background_opacity = 0.8,

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
	font_size = 20,

	-- Keybindings
	keys = {
		-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
		{
			key = "LeftArrow",
			mods = "OPT",
			action = wezterm.action({ SendString = "\x1bb" }),
		},
		-- Make Option-Right equivalent to Alt-f; forward-word
		{
			key = "RightArrow",
			mods = "OPT",
			action = wezterm.action({ SendString = "\x1bf" }),
		},
		-- Make CMD-Left move to the start of sentence
		{
			key = "LeftArrow",
			mods = "CMD",
			action = wezterm.action({ SendString = "\x1bOH" }),
		},
		-- Make CMD-Right move to the end of sentence
		{
			key = "RightArrow",
			mods = "CMD",
			action = wezterm.action({ SendString = "\x1bOF" }),
		},
	},
}

-- Colorscheme
local file = io.open(wezterm.config_dir .. "/colorscheme", "r")
print(file)
if file then
	config.color_scheme = file:read("*a")
	file:close()
else
	config.color_scheme = "Tokyo Night Night"
end

return config
