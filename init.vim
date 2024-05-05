"	██    ██ ██ ███    ███ ██████   ██████
"	██    ██ ██ ████  ████ ██   ██ ██
"	██    ██ ██ ██ ████ ██ ██████  ██
"	 ██  ██  ██ ██  ██  ██ ██   ██ ██
"██	  ████   ██ ██      ██ ██   ██  ██████


"""""""""""""""""""""""""""""""""""""""""""""
" 				CLASSIC CONFIG 
"""""""""""""""""""""""""""""""""""""""""""""

syntax on

set linebreak
set nowrap
set ruler
set number
set showmatch
set noswapfile
set mouse=a
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set splitbelow
set splitright
set wildignorecase
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""
" 				Alias for MAJ 
"""""""""""""""""""""""""""""""""""""""""""""

command! W <cmd>w

command! Q <cmd>q

command! WA <cmd>wa
command! Wa <cmd>wa

command! QA <cmd>qa
command! Qa <cmd>qa

command! WQ <cmd>wq
command! Wq <cmd>wq

command! XA <cmd>xa
command! Xa <cmd>xa

"""""""""""""""""""""""""""""""""""""""""""""
" 				MapLeader 
"""""""""""""""""""""""""""""""""""""""""""""

let mapleader=" "

"		For leaving vim config
inoremap <C-s> <cmd>wa<cr>
nnoremap <C-s> <cmd>wa<cr>
nnoremap <leader>w <cmd>wa<cr>
nnoremap <leader>q 
nnoremap <leader>Q <cmd>q<cr>

"		For moving between windows
nnoremap <leader>1 <cmd>1tabnext<cr>
nnoremap <leader>2 <cmd>2tabnext<cr>
nnoremap <leader>3 <cmd>3tabnext<cr>
nnoremap <leader>4 <cmd>4tabnext<cr>
nnoremap <leader>5 <cmd>5tabnext<cr>
nnoremap <leader>6 <cmd>6tabnext<cr>
nnoremap <leader>7 <cmd>7tabnext<cr>
nnoremap <leader>8 <cmd>8tabnext<cr>
nnoremap <leader>9 <cmd>9tabnext<cr>
nnoremap <leader>0 <cmd>10tabnext<cr>
nnoremap <leader>n <cmd>tabnew<cr>
nnoremap <leader>o gT
nnoremap <leader>p gt

"		For Copilot
nnoremap <leader>X <cmd>Copilot disable<cr>
nnoremap <leader>Z <cmd>Copilot enable<cr>

"		For buffer
nnoremap <leader>v <cmd>vsplit<cr>
nnoremap <leader>h <cmd>split<cr>

"		To navigate between files
nnoremap <leader><space> <cmd>Neotree toggle<cr>
nnoremap <leader>b <cmd>Telescope buffers prompt_prefix=📂:<cr>
nnoremap <leader>g <cmd>Telescope live_grep prompt_prefix=🪄:<cr>
nnoremap <leader>f <cmd>Telescope find_files prompt_prefix=🔖:<cr>
nnoremap <leader>T <cmd>Telescope<cr>

"		Some shortcut to be faster
nnoremap <leader>N <cmd>!norminette
nnoremap <leader>F <cmd>!find . -name "*.c" >> ./Makefile<cr>
nnoremap <leader>m <cmd>!make -j<cr>
nnoremap <leader>c <cmd>!copen<cr>
nnoremap <leader>d :GdbStartLLDB lldb 
nnoremap <leader>M I#include <libc.h><cr><cr>int main(int argc, char *argv[], char *evnp[])<cr>{<cr>}<esc>ko
nnoremap <leader>t <cmd>lua require("FTerm").toggle()<cr>
nnoremap <leader>dd <cmd>windo difft<cr>
nnoremap <leader>do <cmd>diffo<cr>

"		For the header
nnoremap <F1> = <cmd><cmd>Stdheader<CR>

"		Some random shortcut
nnoremap ª <cmd>m .+1<CR>==
nnoremap º <cmd>m .-2<CR>==nnoremap <leader>o gT
inoremap ª <Esc><cmd>m .+1<CR>==gi
inoremap º <Esc><cmd>m .-2<CR>==gi
vnoremap ª <cmd>m '>+1<CR>gv=gvnnoremap <leader>o gT
vnoremap º <cmd>m '<-2<CR>gv=gv
onoremap ii ?if (<cr>jjdi{kkf(lci(

"""""""""""""""""""""""""""""""""""""""""""""
"              		 VIMPLUG 
"""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
	Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
	Plug 'numToStr/FTerm.nvim'
	Plug 'sakhnik/nvim-gdb'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'edkolev/tmuxline.vim'
	Plug 'numToStr/Comment.nvim'
	Plug 'sainnhe/edge'
	Plug 'rafamadriz/friendly-snippets'
	Plug '42Paris/42header'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'voldikss/vim-floaterm'
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'rafamadriz/friendly-snippets'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'williamboman/mason.nvim'
	Plug 'myusuf3/numbers.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'folke/trouble.nvim'
	Plug 'scrooloose/syntastic'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'ntpeters/vim-airline-colornum'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
	Plug 'folke/noice.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'github/copilot.vim'
	Plug 'rcarriga/nvim-notify'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""
"					Loading lua
"""""""""""""""""""""""""""""""""""""""""""""

lua require('lsp_config').setup()
lua require('noice_config').setup()
lua require('comment_config').setup()
lua require('telescope_config').setup()
lua require('lsp_signature_config').setup()
lua require('mason_config').setup()
lua require('cmp_config').setup()
lua require('nordic_config').setup()
lua require('fterm_config').setup()

"""""""""""""""""""""""""""""""""""""""""""""
"					See Char
"""""""""""""""""""""""""""""""""""""""""""""

set listchars=tab:▸\ ,eol:¬
set list

"""""""""""""""""""""""""""""""""""""""""""""
"					ColorScheme
"""""""""""""""""""""""""""""""""""""""""""""

colorscheme nordic
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "nord_minimal"

"""""""""""""""""""""""""""""""""""""""""""""
"              		  CURSORLINE
"""""""""""""""""""""""""""""""""""""""""""""

let g:airline_colornum_enabled = 1
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""
"              		 PATH
"""""""""""""""""""""""""""""""""""""""""""""

let g:copilot_node_path = '~/.nvm/versions/node/v22.1.0/bin/node'

"""""""""""""""""""""""""""""""""""""""""""""
"              		 COLOR
"""""""""""""""""""""""""""""""""""""""""""""

autocmd VimEnter * TSToggle highlight
