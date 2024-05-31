local fterm_config_lua = {}

function fterm_config_lua.setup()
	require('FTerm').setup({
		ft = 'FTerm',
		cmd = os.getenv('SHELL'),
		border = 'rounded',
		auto_close = true,
		hl = 'Normal',
		blend = 0,
		dimensions = {
			height = 0.9,
			width = 0.9,
			x = 0.5,
			y = 0.5,
		},
		clear_env = false,
		env = nil,
		on_exit = nil,
		on_stdout = nil,
		on_stderr = nil,
})

end

return fterm_config_lua

