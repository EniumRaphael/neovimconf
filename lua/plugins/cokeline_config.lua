local cokeline_config_lua = {}

local get_hex = require('cokeline.hlgroups').get_hl_attr

local green = vim.g.terminal_color_2
local yellow = vim.g.terminal_color_3

function cokeline_config_lua.setup()
	require('cokeline').setup({
		default_hl = {
			fg = function(buffer)
				return buffer.is_focused and get_hex('Normal', 'fg') or get_hex('Comment', 'fg')
			end,
			bg = get_hex('ColorColumn', 'bg'),
		},
		components = {
			{
				text = '｜',
				fg = function(buffer)
					return buffer.is_modified and yellow or green
				end,
			},
			{
				text = function(buffer) return buffer.devicon.icon .. ' ' end,
				fg = function(buffer) return buffer.devicon.color end,
			},
			{
				text = function(buffer) return buffer.index .. ': ' end,
			},
			{
				text = function(buffer) return buffer.unique_prefix end,
				fg = get_hex('Comment', 'fg'),
				style = 'italic',
			},
			{
				text = function(buffer) return buffer.filename .. ' ' end,
				style = function(buffer) return buffer.is_focused and 'bold' or nil end,
			},
			{
				text = '󰅖',
				on_click = function(_, _, _, _, buffer)
					buffer:delete()
				end,
			},
			{
				text = ' ',
			},
		},
	})
end

return cokeline_config_lua
