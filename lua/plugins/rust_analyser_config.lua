local rust_tools_config_lua = {}

function rust_tools_config_lua.setup()
	require('rust-tools').setup({
		server = {
			on_attach = function(_, bufnr)
				vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
				vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
			end,
		},
	})
end
return rust_tools_config_lua
