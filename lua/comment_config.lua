local comment_config_lua = {}

function comment_config_lua.setup()
	require('Comment').setup({
	padding = true,
	sticky = true,
	ignore = nil,
	toggler = {
		line = '<C-/>',
		block = ' /',
	},
	opleader = {
		line = '<C-/>',
		block = ' /',
	},
	extra = {
		above = '<C-?><Up>',
		below = '<C-?><Down>',
		eol = '<C-?><Left>',
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
