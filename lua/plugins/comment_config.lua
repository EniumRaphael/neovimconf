local comment_config_lua = {}

function comment_config_lua.setup()
	require('Comment').setup({
		padding = true,
		sticky = true,
		ignore = nil,
		toggler = {
			line = '<C-_>',
			block = ' _',
		},
		opleader = {
			line = '<C-_>',
			block = ' _',
		},
		extra = {
			above = '<C-+><Up>',
			below = '<C-+><Down>',
			eol = '<C-+><Left>',
		},
		mappings = {
			basic = true,
			extra = true,
		},
		pre_hook = nil,
		post_hook = nil,
	})
end

return comment_config_lua
