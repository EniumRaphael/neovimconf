local autocmd = {}
	function autocmd.treesitter()
		vim.api.nvim_create_autocmd("VimEnter", {
			pattern = "*",
			command = "TSToggle highlight",
		})
	end

	function autocmd.setup()
		autocmd.treesitter()
	end
return autocmd
