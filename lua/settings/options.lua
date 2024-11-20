local options = {}

function options.setup()
	vim.opt.termguicolors = true
	vim.opt.syntax = "on"
	vim.opt.linebreak = true
	vim.opt.wrap = false
	vim.opt.ruler = true
	vim.opt.relativenumber = true
	vim.opt.number = true
	vim.opt.showmatch = true
	vim.opt.swapfile = false
	vim.opt.mouse = "a"
	vim.opt.shiftwidth = 4
	vim.opt.tabstop = 4
	vim.opt.autoindent = true
	vim.opt.smartindent = true
	vim.opt.splitbelow = true
	vim.opt.splitright = true
	vim.opt.wildignorecase = true
	vim.opt.scrolloff = 3
	vim.opt.clipboard = "unnamed,unnamedplus"
	vim.opt.columns = 80
	vim.opt.ignorecase = true
	vim.g.user42 = 'rparodi'
	vim.g.mail42 = 'rparodi@student.42.fr'
	vim.g.mapleader = " "
	vim.cmd("colorscheme catppuccin-mocha")
	vim.opt.listchars = { eol = '↵', tab = '→ ' }
	vim.opt.list = true
end

return options
