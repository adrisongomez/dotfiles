--[[
    This is file configuration for Lush theme.
    Right now it still in progress.
]]

local lush = require("lush")
local hsl = lush.hsl

local palette = {
	blue = {
		main = hsl(240, 62, 31),
		dark = hsl(240, 85, 5),
		light = hsl(240, 55, 59),
	},
	orange = hsl("#B84A12"),
	black = "black",
}

local theme = lush(function()
	return {
		Normal = { bg = palette.blue.dark },
		Comment = { fg = palette.blue.light.li(50), gui = "bold" },
		CursorLine = {},
		-- Visual {}
	}
end)

-- Comment

lush(theme)

-- return theme
