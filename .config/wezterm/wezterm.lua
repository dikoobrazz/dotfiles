-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"

-- config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium", italic = false })
config.font = wezterm.font("Consolas Ligaturized v3", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Source Code Pro", { weight = "Medium", italic = false })
-- config.font = wezterm.font("IBM Plex Mono", { weight = "Medium", italic = false })
-- config.font = wezterm.font("M+ 1m", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Mononoki", { weight = "Bold", italic = false })
-- config.font = wezterm.font("Anonymous Pro", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Agave", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Cascadia Code", { weight = "Medium", italic = false })
-- config.font = wezterm.font("UbuntuMono Nerd Font", { weight = "Medium", italic = false })
-- config.font = wezterm.font("FiraMono Nerd Font", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Iosevka Custom", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Roboto Mono", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Victor Mono", { weight = "Bold", italic = false })
-- config.font = wezterm.font("Space Mono", { weight = "Bold", italic = false })
config.font_size = 12.5
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBar"
config.window_padding = {
	left = 10,
	right = 0,
	top = 15,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
