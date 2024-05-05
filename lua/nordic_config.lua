local nordic_config_lua = {}

local palette = require 'nordic.colors'

function nordic_config_lua.setup()
	require('nordic').setup {
		on_palette = function(palette) return palette end,
		bold_keywords = false,
		italic_comments = true,
		transparent_bg = false,
		bright_border = false,
		reduced_blue = true,
		swap_backgrounds = false,
		override = {},
		cursorline = {
			bold = false,
			bold_number = true,
			theme = 'dark',
			blend = 0.85,
		},
		noice = {
			style = 'classic',
		},
		telescope = {
			style = 'flat',
		},
		leap = {
			dim_backdrop = false,
		},
		ts_context = {
			dark_background = true,
		}
	}
end

return nordic_config_lua
