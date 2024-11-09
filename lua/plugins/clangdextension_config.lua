local clangdextension_config_lua = {}

function clangdextension_config_lua.setup()
	require('clangd_extensions').setup({
		inlay_hints = {
			inline = vim.fn.has("nvim-0.10") == 1,
			only_current_line = false,
			only_current_line_autocmd = { "CursorHold" },
			show_parameter_hints = true,
			parameter_hints_prefix = "   ↼ ",
			other_hints_prefix = "   ⇀ ",
			max_len_align = true,
			max_len_align_padding = 4,
			right_align = false,
			right_align_padding = 5,
			highlight = "Comment",
			priority = 100,
		},
		ast = {
			role_icons = {
				type = "",
				declaration = "",
				expression = "",
				specifier = "",
				statement = "",
				["template argument"] = "",
			},
			kind_icons = {
				Compound = "",
				Recovery = "",
				TranslationUnit = "",
				PackExpansion = "",
				TemplateTypeParm = "",
				TemplateTemplateParm = "",
				TemplateParamObject = "",
			},
			highlights = {
				detail = "Comment",
			},
		},
		memory_usage = {
			border = "none",
		},
		symbol_info = {
			border = "none",
		},
	})
	require("clangd_extensions.inlay_hints").setup_autocmd()
	require("clangd_extensions.inlay_hints").set_inlay_hints()
end

return clangdextension_config_lua

