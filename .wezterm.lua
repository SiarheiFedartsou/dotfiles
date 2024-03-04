-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.window_frame = {
  font_size = 24.0
}

-- For example, changing the color scheme:
config.color_scheme = 'Catpuccin Mocha'
config.font = wezterm.font 'Fira Code' --'MesloLGS NF'

-- and finally, return the configuration to wezterm
return config
