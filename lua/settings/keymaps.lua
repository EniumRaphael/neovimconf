local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local keymaps = {}

function keymaps.deleted()
	map('n', 'd', '"_d')
	map('n', 'dd', '"_dd')
	map('n', 'dw', '"_dw')
	map('n', 'd$', '"_d$')
	map('v', 'dd', '"_dd')
	map('v', 'dw', '"_dw')
	map('v', 'd$', '"_d$')
	map('v', 'd', '"_d')
	map('x', 'dd', '"_dd')
	map('x', 'dw', '"_dw')
	map('x', 'd$', '"_d$')
	map('x', 'd', '"_d')
end

function keymaps.saves()
	map('i', '<C-s>', '<cmd>wa<CR>')
	map('n', '<C-s>', '<cmd>wa<CR>')
	map('n', '<leader>w', '<cmd>wa<CR>')
	map('n', '<leader>q', '<C-z>')
	map('n', '<leader>Q', '<cmd>q<CR>')
end

function keymaps.window()
	map('n', '<C-S-Up>', '<cmd>resize +2<CR>')
	map('n', '<C-S-Down>', '<cmd>resize -2<CR>')
	map('n', '<C-S-Left>', '<cmd>vertical resize -2<CR>')
	map('n', '<C-S-Right>', '<cmd>vertical resize +2<CR>')
end

function keymaps.git()
	map('n', '<leader>Ga', '<cmd>lua require("functions.git").adding_files()<CR>')
	map('n', '<leader>Gs', '<cmd>lua require("functions.git").status_repo()<CR>')
	map('n', '<leader>Gm', '<cmd>lua require("functions.git").commit_with_message()<CR>')
	map('n', '<leader>Gc', '<cmd>lua require("functions.git").commit_with_message()<CR>')
	map('n', '<leader>Gp', '<cmd>!git push<CR>')
end

function keymaps.tabs()
	map("n", "<C-S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
	map("n", "<C-Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
	for i = 1, 9 do
		map("n", ("<Leader>%s"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i))
	end
	map('n', '<leader>n', '<cmd>tabnew<CR>')
	map('n', '<leader>o', 'gT')
	map('n', '<leader>p', 'gt')
	map('n', '<leader>v', '<cmd>vsplit<CR>')
	map('n', '<leader>h', '<cmd>split<CR>')
end

function keymaps.files()
	map('n', '<leader><space>', '<cmd>Neotree toggle<CR>')
	map('n', '<leader>f', '<cmd>Telescope find_files prompt_prefix=📂:<CR>')
	map('n', '<leader>b', '<cmd>Telescope buffers prompt_prefix=🔖:<CR>')
	map('n', '<leader>g', '<cmd>Telescope live_grep prompt_prefix=🪄:<CR>')
	map('n', '<leader>T', '<cmd>Telescope<CR>')
end

function keymaps.speedup()
	map('n', '<leader>i', '<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enable())<cr>')
	map('i', '<C-h>', '<Left>')
	map('i', '<C-j>', '<Down>')
	map('i', '<C-k>', '<Up>')
	map('i', '<C-l>', '<Right>')
	map('n', '<leader><esc>', '<cmd>nohl<CR>')
	map('n', '<leader>N', '<cmd>!norminette<CR>')
	map('n', '<leader>F', '<cmd>!find . -name "*.c" >> ./Makefile<CR>')
	map('n', '<leader>m', '<cmd>!make -j<CR>')
	map('n', '<leader>c', '<cmd>!copen<CR>')
	map('n', '<leader>d', '<cmd>Neogen<CR>')
	map('n', '<leader>M', 'I#include <libc.h><CR><CR>int main(int argc, char *argv[], char *evnp[])<CR>{<CR>}<esc>ko')
	map('n', '<leader>t', '<cmd>lua require("FTerm").toggle()<CR>')
	map('n', '<leader>dd', '<cmd>windo difft<CR>')
	map('n', '<leader>do', '<cmd>diffo<CR>')
end

function keymaps.header()
	map('n', '<F1>', '<cmd>Stdheader<CR>')
	map('n', '<leader>H', '<cmd>lua require("functions.header").insert_header_guard()<CR>')
end

function keymaps.setup()
	keymaps.deleted()
	keymaps.saves()
	keymaps.window()
	keymaps.git()
	keymaps.tabs()
	keymaps.files()
	keymaps.speedup()
	keymaps.header()
end

return keymaps
