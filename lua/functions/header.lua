local header = {}
	function insert_header_guard()
		local macro_name = vim.fn.substitute(vim.fn.toupper(vim.fn.expand('%:t')), '%.', '_', 'g')
		vim.api.nvim_command("normal! i#ifndef " .. macro_name .. "\n#define " .. macro_name .. "\n\n\n#endif\n")
		vim.api.nvim_command("normal! :Stdheader\nkkO")
	end
return header
