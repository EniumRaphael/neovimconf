local telescope_config_lua = {}

function telescope_config_lua.setup()
	require('telescope').setup{ 
		defaults = { 
		file_ignore_patterns = { 
			"node_modules",
			"objects",
			"object",
			}
		}
	}
end

return telescope_config_lua
