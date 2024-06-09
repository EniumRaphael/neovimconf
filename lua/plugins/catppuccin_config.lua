local catppuccin_config_lua = {} 

function catppuccin_config_lua.setup()
	require("catppuccin").setup({
		flavour = "mocha",
		background = {
			light = "mocha",
			dark = "mocha",
		},
		transparent_background = false,
		show_end_of_buffer = false,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
		no_underline = false,
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
		color_overrides = {},
		custom_highlights = {},
		default_integrations = true,
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			neotree = true,
			treesitter = true,
			notify = true,
			telescope = true,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
		},
	})
	vim.api.nvim_set_hl(0, "Comment", { ctermbg = "NONE", bg = "NONE", fg = "NONE", italic = false })
end
return catppuccin_config_lua
