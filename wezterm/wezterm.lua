local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Style
config.default_cursor_style = 'BlinkingUnderline'
config.color_scheme = 'GruvboxDark'
config.font =
    wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

-- Window specific
config.window_close_confirmation = 'AlwaysPrompt'
config.window_background_opacity = 0.85
config.hide_tab_bar_if_only_one_tab = true

config.macos_window_background_blur = 50


config.keys = {
    -- Natural text editing keybinds
    -- Move one word/agrument left/right
    { mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
    -- Move all the way left/right
	{ mods = "CMD", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
    -- Delete all characters with CMD + Backspace
    { mods = "CMD", key = "Backspace", action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) }
}

return config