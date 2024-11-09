local treesitter_config_lua = {}

function treesitter_config_lua.setup()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = "all", -- Automatically install all available parsers
		sync_install = false,    -- Install parsers synchronously (only use if you experience issues)
		highlight = {
			enable = true,              -- Enable Tree-sitter based highlighting
			additional_vim_regex_highlighting = false,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn",
				node_incremental = "grn",
				scope_incremental = "grc",
				node_decremental = "grm",
			},
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				},
			},
		},
	}
end

return treesitter_config_lua
