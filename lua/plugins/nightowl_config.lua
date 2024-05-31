local nightowl_config_lua = {}
require("night-owl")

function nightowl_config_lua.setup()
	require("night-owl").setup({
		bold = true,
		italics = true,
		underline = true,
		undercurl = true,
		transparent_background = false,
	})
	end

return nightowl_config_lua
