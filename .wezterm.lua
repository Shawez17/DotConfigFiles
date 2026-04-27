

local wezterm = require "wezterm"
local kanagawa = wezterm.plugin.require "https://github.com/sravioli/kanagawa.wz"

local config = wezterm.config_builder()

kanagawa.apply_to_config(config, { scheme = "dragon" })

--config.colors = theme.colors()
   --config.window_frame = theme.window_frame() -- needed only if using fancy tab bar
config.font = wezterm.font('Apple braille')
config.window_background_opacity=0.952
return config

