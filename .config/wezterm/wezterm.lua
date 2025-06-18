-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Tokyo Night"
config.color_scheme = "catppuccin-frappe"
-- config.color_scheme = "PaperColor Light (base16)"
-- config.color_scheme = "nord"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Gruvbox dark, pale (base16)"

-- config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Consolas Ligaturized v3", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Source Code Pro")
-- config.font = wezterm.font("IBM Plex Mono", { weight = "Medium", italic = false })
-- config.font = wezterm.font("M+ 1m", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Mononoki", { weight = "Bold", italic = false })
-- config.font = wezterm.font("Anonymous Pro", { weight = "Bold", italic = false })
-- config.font = wezterm.font("Agave", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Cascadia Code", { weight = "Medium", italic = false })
-- config.font = wezterm.font("UbuntuMono Nerd Font", { weight = "Medium", italic = false })
-- config.font = wezterm.font("FiraMono Nerd Font", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Iosevka Custom", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Iosevka Custom", { weight = "Medium", italic = false })
config.font = wezterm.font("Roboto Mono", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Monaco", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Input Mono", { weight = 600, italic = false })
-- config.font = wezterm.font("Victor Mono", { weight = "Bold", italic = false })
-- config.font = wezterm.font("Space Mono", { weight = "Bold", italic = false })
config.font_size = 11
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBar"
config.window_padding = {
	left = 10,
	right = 0,
	top = 10,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
