-----------------------------------------------------------------------------------------------------------------------
--                                                  Ruby theme                                                       --
-----------------------------------------------------------------------------------------------------------------------
local awful = require("awful")

-- This theme was inherited from another with overwriting some values
-- Check parent theme to find full settings list and its description
local theme = require("themes/colored/theme")


-- Color scheme
-----------------------------------------------------------------------------------------------------------------------
theme.color.main   = "#b20d1d"
theme.color.urgent = "#087465"


-- Common
-----------------------------------------------------------------------------------------------------------------------
theme.path = awful.util.get_configuration_dir() .. "themes/ruby"

-- Main config
--------------------------------------------------------------------------------
theme.panel_height = 38 -- panel height
theme.wallpaper    = theme.path .. "/wallpaper/custom.png"

-- Setup parent theme settings
--------------------------------------------------------------------------------
theme:update()


-- Desktop config
-----------------------------------------------------------------------------------------------------------------------

-- Desktop widgets placement
--------------------------------------------------------------------------------
theme.desktop.grid = {
	width  = { 420, 520, 520 },
	height = { 180, 160, 160, 72 },
	edge   = { width = { 60, 60 }, height = { 60, 60 } }
}

theme.desktop.places = {
	netspeed = { 1, 1 },
	ssdspeed = { 2, 1 },
	hddspeed = { 3, 1 },
	cpumem   = { 1, 2 },
	transm   = { 1, 3 },
	disks    = { 1, 4 },
	thermal  = { 1, 5 }
}

-- Desktop widgets
--------------------------------------------------------------------------------
theme.desktop.multiline.lines.line_height = 5
theme.desktop.multiline.lines.progressbar.chunk = { gap = 5, width = 12 }
theme.desktop.multiline.lines.tooltip.set_position = function()
	local coords = mouse.coords()
	return { x = coords.x, y = coords.y - 50 }
end


-- Panel widgets
-----------------------------------------------------------------------------------------------------------------------

-- individual margins for panel widgets
------------------------------------------------------------
theme.widget.wrapper = {
	layoutbox   = { 12, 9, 6, 6 },
	textclock   = { 10, 10, 0, 0 },
	volume      = { 6, 10, 3, 3 },
	keyboard    = { 9, 9, 3, 3 },
	mail        = { 9, 9, 3, 3 },
	tray        = { 8, 8, 7, 7 },
	cpu         = { 9, 3, 7, 7 },
	ram         = { 2, 2, 7, 7 },
	battery     = { 3, 9, 7, 7 },
	network     = { 4, 4, 7, 7 },
	taglist     = { 4, 4, 5, 4 },
	tasklist    = { 0, 72, 0, 0 }, -- centering tasklist widget
}

-- Dotcount
------------------------------------------------------------
--theme.gauge.graph.dots.dot_gap_h = 5

-- Audio
------------------------------------------------------------
theme.gauge.audio.blue.dash.plain = true
theme.gauge.audio.blue.dash.bar.num = 8
theme.gauge.audio.blue.dash.bar.width = 3
theme.gauge.audio.blue.dmargin = { 5, 0, 9, 9 }
theme.gauge.audio.blue.width = 86
theme.gauge.audio.blue.icon = theme.path .. "/widget/audio.svg"

-- Dash
------------------------------------------------------------
theme.gauge.monitor.dash.width = 11

-- Tag (base element of taglist)
------------------------------------------------------------

-- Tasklist
------------------------------------------------------------
theme.widget.tasklist.char_digit = 5
theme.widget.tasklist.task = theme.gauge.task.ruby

-- End
-----------------------------------------------------------------------------------------------------------------------
return theme
