local lsp_config_lua = {}

function lsp_config_lua.setup()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.offsetEncoding = { "utf-16" }

	require("lspconfig").clangd.setup({
		cmd = { "clangd" },
		filetypes = { "c", "cpp" },
		root_dir = require('lspconfig').util.root_pattern(".clangd", "compile_commands.json", ".git"),
		capabilities = capabilities,
		on_attach = function(client, bufnr)
			local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
			local opts = { noremap=true, silent=true }
			buf_set_keymap('n', '<C-LeftMouse>', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
			buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
		end
	})
end
return lsp_config_lua
