local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if vim.loop.fs_stat(lazypath)then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

local lazy = {}
function lazy.setup()
	require("lazy").setup({
		{ "nordtheme/vim", run = ":colorscheme nord" },
		{ "numToStr/FTerm.nvim", config = function() require('plugins.fterm_config').setup() end },
		{ "sakhnik/nvim-gdb" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-lua/plenary.nvim" },
		{ "numToStr/Comment.nvim", config = function() require('plugins.comment_config').setup() end },
		{ "sainnhe/edge" },
		{ "rafamadriz/friendly-snippets" },
		{ "42Paris/42header" },
		{ "MunifTanjim/nui.nvim" },
		{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
		{ "vim-airline/vim-airline" },
		{ "vim-airline/vim-airline-themes" },
		{ "voldikss/vim-floaterm" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "neovim/nvim-lspconfig", config = function() require('plugins.lsp_config').setup() end },
		{ "hrsh7th/nvim-cmp", config = function() require('plugins.cmp_config').setup() end },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "p00f/clangd_extensions.nvim", config = function() require('plugins.clangdextension_config').setup() end },
		{ "hrsh7th/cmp-cmdline" },
		{ "ray-x/lsp_signature.nvim", config = function() require('plugins.lsp_signature_config').setup() end },
		{ "L3MON4D3/LuaSnip" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "williamboman/mason.nvim", config = function() require('plugins.mason_config').setup() end },
		{ "myusuf3/numbers.vim" },
		{ "mg979/vim-visual-multi", branch = "master" },
		{ "folke/trouble.nvim", config = function() require('plugins.trouble_config').setup() end },
		{ "scrooloose/syntastic" },
		{ "nvim-neo-tree/neo-tree.nvim" },
		{ "ntpeters/vim-airline-colornum" },
		{ "nvim-telescope/telescope.nvim", tag = "0.1.5", config = function() require('plugins.telescope_config').setup() end },
		{ "folke/noice.nvim", config = function() require('plugins.noice_config').setup() end },
		{ "github/copilot.vim" },
		{ "rcarriga/nvim-notify" }
})
end

return lazy
